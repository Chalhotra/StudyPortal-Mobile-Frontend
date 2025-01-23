import 'package:studyportal/features/studymaterial/domain/entities/student.dart';

class StudentModel extends Student {
  StudentModel(
      {required super.id,
      required super.enrollmentNumber,
      required super.name,
      required super.arcusId});

  factory StudentModel.fromJson(Map<String, dynamic> map) {
    return (StudentModel(
        id: map["id"],
        enrollmentNumber: map["enrollment_number"],
        name: map["name"],
        arcusId: map["arcus_id"]));
  }
}
