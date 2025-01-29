import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/department_card/department_card.dart';

class ScrollSection extends StatelessWidget {
  const ScrollSection(
      {super.key,
      required this.rows,
      required this.departmentCards,
      required this.scroll,
      this.title = ""});

  final double rows;
  final List<DepartmentCard> departmentCards;
  final bool scroll;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: (rows * 160 - 18).h,
        padding: const EdgeInsets.only(
          top: 12,
          bottom: 12,
        ).r,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color(0xFFE3E2E8), width: 1.w),
            borderRadius: BorderRadius.circular(8)),
        child: ResponsiveGridList(
          scroll: scroll,
          desiredItemWidth: 160.w,
          minSpacing: 12,
          children: departmentCards,
        ));
  }
}
