class File {
  final int id;
  final String name;
  final String courseCode;
  final String s3Url;
  final String status;
  final String description;
  final String type;
  String? path;

  File(
      {required this.id,
      required this.name,
      required this.courseCode,
      required this.s3Url,
      required this.status,
      required this.description,
      required this.type,
      this.path});
}
