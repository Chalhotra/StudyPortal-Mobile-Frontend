import 'package:studyportal/features/studymaterial/domain/entities/course.dart';

class CourseModel extends Course {
  CourseModel(
      {required super.courseCode,
      required super.courseName,
      required super.semester,
      required super.branch});

  factory CourseModel.fromJson(Map<String, dynamic> map) {
    return CourseModel(
      courseCode: map["course_code"],
      courseName: map["course_name"],
      semester: map["semester"],
      branch: map["branch"],
    );
  }
}
