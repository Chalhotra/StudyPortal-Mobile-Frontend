import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studyportal/core/theme/constants.dart';
import 'package:studyportal/features/studymaterial/data/pre_integration/hardcoded_stuff.dart';
import 'package:studyportal/features/studymaterial/domain/entities/department.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/course_card/course_card.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/filters_page.dart/filters_page.dart';
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
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  void _showModalBottomSheet() {
    showModalBottomSheet<void>(
      useSafeArea: true,
      isScrollControlled: true,
      constraints: BoxConstraints(minHeight: double.infinity.h),
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
    _focusNode.addListener(() => setState(() {
          _isFocused = _focusNode.hasFocus;
        }));
  }

  Map<int, List<CourseCard>> _groupCoursesBySemester(
      List<CourseCard> courseCards) {
    Map<int, List<CourseCard>> semesterCourses = {};

    for (var courseCard in courseCards) {
      semesterCourses
          .putIfAbsent(courseCard.semester, () => [])
          .add(courseCard);
    }

    return semesterCourses;
  }

  @override
  Widget build(BuildContext context) {
    final filteredCourseCards = courseCards
        .where((courseCard) =>
            courseCard.department.title == widget.department.title)
        .toList();

    final Map<int, List<CourseCard>> semesterWiseCourseCards =
        _groupCoursesBySemester(filteredCourseCards);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20.h, top: 20.h),
                height: 50.h,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: const Color(StudyPortalConstants.spRoyalBlue),
                        size: 24.r,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.75.w,
                      child: Text(
                        "${widget.department.title} Department",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24.sp),
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: _showModalBottomSheet,
                      child: SvgPicture.asset("lib/core/svgs/filters.svg",
                          width: 24.w, height: 24.h),
                    ),
                  ],
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Search in ${widget.department.title} Department",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(10.r),
                    child: SvgPicture.asset(
                      "lib/core/svgs/search_icon.svg",
                      fit: BoxFit.scaleDown,
                      width: 20.w,
                      height: 20.h,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 24.h);
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
                          (160.h * numberOfRows + 12.h * (numberOfRows - 1)),
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
