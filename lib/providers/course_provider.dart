// lib/providers/course_provider.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:resto2/models/course_model.dart';
import 'package:resto2/providers/auth_providers.dart';
import 'package:resto2/services/course_service.dart';

part 'course_provider.g.dart';

@riverpod
CourseService courseService(Ref ref) => CourseService();

@riverpod
Stream<List<Course>> coursesStream(Ref ref) {
  final user = ref.watch(currentUserProvider).asData?.value;
  if (user?.restaurantId != null) {
    return ref
        .watch(courseServiceProvider)
        .getCoursesStream(user!.restaurantId!);
  }
  return Stream.value([]);
}

@riverpod
class CourseController extends _$CourseController {
  @override
  FutureOr<void> build() {
    // No-op
  }

  Future<void> _run(Future<void> Function() action) async {
    state = const AsyncLoading();
    try {
      await action();
      if (ref.mounted) {
        state = const AsyncData(null);
      }
    } catch (e, st) {
      if (ref.mounted) {
        state = AsyncError(e, st);
      }
    }
  }

  bool _isNameUnique(String name, String? courseIdToExclude) {
    final courses = ref.read(coursesStreamProvider).asData?.value ?? [];
    return courses
        .where(
          (course) =>
              course.id != courseIdToExclude &&
              course.name.trim().toLowerCase() == name.trim().toLowerCase(),
        )
        .isEmpty;
  }

  Future<void> addCourse({
    required String name,
    required String description,
  }) =>
      _run(() async {
        final user = ref.read(currentUserProvider).asData?.value;
        if (user?.restaurantId == null) {
          throw Exception('User is not associated with a restaurant.');
        }
        if (!_isNameUnique(name, null)) {
          throw Exception('A course with this name already exists.');
        }

        final newCourse = Course(
          id: '',
          name: name,
          description: description,
          restaurantId: user!.restaurantId!,
          createdAt: Timestamp.now(),
          updatedAt: Timestamp.now(),
        );

        await ref.read(courseServiceProvider).addCourse(newCourse);
      });

  Future<void> updateCourse({
    required String courseId,
    required String name,
    required String description,
  }) =>
      _run(() async {
        if (!_isNameUnique(name, courseId)) {
          throw Exception('Another course with this name already exists.');
        }
        final updateData = {
          'name': name,
          'description': description,
          'updatedAt': Timestamp.now(),
        };
        await ref
            .read(courseServiceProvider)
            .updateCourse(courseId, updateData);
      });

  Future<void> deleteCourse(String courseId) =>
      _run(() => ref.read(courseServiceProvider).deleteCourse(courseId));
}
