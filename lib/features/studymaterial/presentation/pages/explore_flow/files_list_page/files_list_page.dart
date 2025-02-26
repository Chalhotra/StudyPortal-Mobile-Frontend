import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:studyportal/features/studymaterial/data/pre_integration/hardcoded_stuff.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/file_tabs/file_tabs.dart';

class FilesListPage extends StatelessWidget {
  static MaterialPageRoute route(BuildContext context, String courseCode) {
    return MaterialPageRoute(
        builder: (context) => FilesListPage(courseCode: courseCode));
  }

  final String courseCode;

  const FilesListPage({super.key, required this.courseCode});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            courseCode,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24.sp),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            FileTabs(
              size: size,
              fileTiles: HardCodedConstants.fileTiles
                  .where((file) => file.courseCode == courseCode)
                  .toList(),
              screen: courseCode,
            ),
          ],
        ),
      ),
    );
  }
}
