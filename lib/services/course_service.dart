// lib/services/course_service.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resto2/models/course_model.dart';

class CourseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String _collectionPath = 'courses';

  Stream<List<Course>> getCoursesStream(String restaurantId) {
    return _db
        .collection(_collectionPath)
        .where('restaurantId', isEqualTo: restaurantId)
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.map((doc) {
            return Course.fromJson(doc.data()).copyWith(id: doc.id);
          }).toList(),
        );
  }

  Future<void> addCourse(Course course) async {
    final docRef = _db.collection(_collectionPath).doc();
    await docRef.set(course.copyWith(id: docRef.id).toJson());
  }

  Future<void> updateCourse(String courseId, Map<String, dynamic> data) async {
    await _db.collection(_collectionPath).doc(courseId).update(data);
  }

  Future<void> deleteCourse(String courseId) async {
    await _db.collection(_collectionPath).doc(courseId).delete();
  }
}
