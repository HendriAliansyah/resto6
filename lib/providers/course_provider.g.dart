// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(courseService)
const courseServiceProvider = CourseServiceProvider._();

final class CourseServiceProvider
    extends $FunctionalProvider<CourseService, CourseService, CourseService>
    with $Provider<CourseService> {
  const CourseServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'courseServiceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$courseServiceHash();

  @$internal
  @override
  $ProviderElement<CourseService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CourseService create(Ref ref) {
    return courseService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CourseService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CourseService>(value),
    );
  }
}

String _$courseServiceHash() => r'0ddc26cbe108e8b975655af1b527c2994c57ff83';

@ProviderFor(coursesStream)
const coursesStreamProvider = CoursesStreamProvider._();

final class CoursesStreamProvider extends $FunctionalProvider<
        AsyncValue<List<Course>>, List<Course>, Stream<List<Course>>>
    with $FutureModifier<List<Course>>, $StreamProvider<List<Course>> {
  const CoursesStreamProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'coursesStreamProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$coursesStreamHash();

  @$internal
  @override
  $StreamProviderElement<List<Course>> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<Course>> create(Ref ref) {
    return coursesStream(ref);
  }
}

String _$coursesStreamHash() => r'0bf4ca161ef0f4572c8200f5cd083b47cbbc9c8d';

@ProviderFor(CourseController)
const courseControllerProvider = CourseControllerProvider._();

final class CourseControllerProvider
    extends $AsyncNotifierProvider<CourseController, void> {
  const CourseControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'courseControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$courseControllerHash();

  @$internal
  @override
  CourseController create() => CourseController();
}

String _$courseControllerHash() => r'21720d2509364383a7edc5cb0813552439f42ffa';

abstract class _$CourseController extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    build();
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<void>, void>,
        AsyncValue<void>,
        Object?,
        Object?>;
    element.handleValue(ref, null);
  }
}
