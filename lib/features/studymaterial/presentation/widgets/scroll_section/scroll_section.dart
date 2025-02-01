import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:studyportal/core/theme/constants.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/department_card/department_card.dart';
import 'dart:math';

class ScrollSection extends StatelessWidget {
  const ScrollSection({
    super.key,
    required this.rows,
    required this.departmentCards,
    required this.scroll,
    this.title = "",
    required this.scrollSectionHeight,
  });

  final double rows;
  final List<DepartmentCard> departmentCards;
  final bool scroll;
  final String title;
  final double scrollSectionHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12, bottom: 12).r,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFE3E2E8), width: 1.w),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(left: 12.0, bottom: 12.0).r,
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Color(
                    StudyPortalConstants.spGrey,
                  ),
                ),
              ),
            ),
          // Remove the Expanded widget
          departmentCards.isEmpty
              ? const Center(
                  child: Text(
                    "No items to display",
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              : Container(
                  constraints: BoxConstraints(maxHeight: scrollSectionHeight.h),
                  child: ResponsiveGridList(
                    physics:
                        scroll ? null : const NeverScrollableScrollPhysics(),
                    desiredItemWidth: 160.w,
                    minSpacing: 12.r,
                    children: departmentCards,
                  ),
                )
        ],
      ),
    );
  }
}
