class File {
  final String id;
  final String name;
  final String courseId;
  final String s3Url;
  final String status;
  final String description;
  final String type;

  File(
      {required this.id,
      required this.name,
      required this.courseId,
      required this.s3Url,
      required this.status,
      required this.description,
      required this.type});
}
