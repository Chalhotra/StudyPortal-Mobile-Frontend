import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studyportal/features/studymaterial/data/pre_integration/hardcoded_stuff.dart';
import 'package:studyportal/features/studymaterial/domain/entities/department.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/course_card/course_card.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/filters_page.dart/filters_page.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/scroll_section/scroll_section.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/search_bar/custom_search_bar.dart';

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

  void _showModalBottomSheet() {
    showModalBottomSheet<void>(
      useSafeArea: true,
      isScrollControlled: true,
      constraints: const BoxConstraints(minHeight: double.infinity),
      context: context,
      builder: (context) {
        return const FiltersPage();
      },
    );
  }

  @override
  void initState() {
    courseCards = HardCodedConstants.courseCards;
    super.initState();
  }

  Map<int, List<CourseCard>> _groupBySemester(List<CourseCard> courseCards) {
    Map<int, List<CourseCard>> mp = {};

    for (var courseCard in courseCards) {
      mp.putIfAbsent(courseCard.semester, () => []).add(courseCard);
    }

    return mp;
  }

  @override
  Widget build(BuildContext context) {
    // Assuming 'department' is the value you want to filter by
    final filteredCourseCards = courseCards
        .where((courseCard) =>
            courseCard.department.title == widget.department.title)
        .toList();

    final Map<int, List<CourseCard>> semesterWiseCourseCards =
        _groupBySemester(filteredCourseCards);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20, top: 20),
                height: 50.h,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${widget.department.title} Department",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: _showModalBottomSheet,
                      child: SvgPicture.asset("lib/core/svgs/filters.svg"),
                    ),
                    // const Spacer(),
                  ],
                ),
              ),
              //chetak: Not to be used, not complete, bas placeholder searchbar type hai
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 24);
                  },
                  itemCount: semesterWiseCourseCards.entries.length,
                  itemBuilder: (BuildContext context, int index) {
                    final semester =
                        semesterWiseCourseCards.keys.elementAt(index);
                    final List<CourseCard> courses =
                        semesterWiseCourseCards[semester] ?? <CourseCard>[];

                    int numberOfRows = (courses.length / 2).ceil();

                    return ScrollSection(
                      scrollSectionHeight:
                          (160 * numberOfRows * 1.0 + 12 * (numberOfRows - 1)),
                      title: "Semester $semester",
                      rows: 3.5,
                      departmentCards: courses,
                      scroll: false,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
