import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:studyportal/features/studymaterial/data/pre_integration/hardcoded_stuff.dart';
import 'package:studyportal/features/studymaterial/domain/entities/department.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/course_card/course_card.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/scroll_section/scroll_section.dart';

class CourseListPage extends StatefulWidget {
  static MaterialPageRoute route(Department dept) {
    return MaterialPageRoute(
      builder: (context) => CourseListPage(department: dept),
    );
  }

  final Department department;
  const CourseListPage({super.key, required this.department});

  @override
  State<CourseListPage> createState() => _CourseListPageState();
}

class _CourseListPageState extends State<CourseListPage> {
  List<CourseCard> courseCards = [];
  @override
  void initState() {
    courseCards = HardCodedConstants.courseCards;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Assuming 'department' is the value you want to filter by
    final filteredCourseCards = courseCards
        .where((courseCard) =>
            courseCard.department.title == widget.department.title)
        .toList();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20, top: 20),
                // width: size.width.w,
                height: 50.h,
                child: Row(
                  children: [
                    Text(
                      widget.department.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 24),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              Expanded(
                child: ScrollSection(
                    scroll: true,
                    rows: 3.5,
                    departmentCards: filteredCourseCards),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
