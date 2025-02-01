import 'package:flutter/material.dart';

class FilesListPage extends StatelessWidget {
  static MaterialPageRoute route(String courseCode) {
    return MaterialPageRoute(
        builder: (context) => FilesListPage(courseCode: courseCode));
  }

  final String courseCode;
  const FilesListPage({super.key, required this.courseCode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("$courseCode Files List Page"),
      ),
    );
  }
}
