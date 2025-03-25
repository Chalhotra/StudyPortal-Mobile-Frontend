class Course {
  final int id;
  final String courseCode;
  final String courseName;
  final int semester;
  final int branch;
  final List<int>? files;

  Course(
      {required this.id,
      required this.courseCode,
      required this.courseName,
      required this.semester,
      required this.branch,
      required this.files});
}
