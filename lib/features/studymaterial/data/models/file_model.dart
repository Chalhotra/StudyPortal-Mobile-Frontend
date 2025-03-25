import 'package:studyportal/features/studymaterial/domain/entities/file.dart';

class FileModel extends File {
  FileModel(
      {required super.id,
      required super.name,
      required super.courseCode,
      required super.s3Url,
      required super.status,
      required super.description,
      required super.type});

  factory FileModel.fromJson(Map<String, dynamic> map) {
    return FileModel(
        id: map["id"],
        name: map["name"],
        courseCode: map["course_code"],
        s3Url: map["s3_url"],
        status: map["status"],
        description: map["description"],
        type: map["type"]);
  }
}
