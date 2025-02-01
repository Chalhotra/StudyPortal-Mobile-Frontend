import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studyportal/features/studymaterial/domain/entities/department.dart';
import 'package:studyportal/features/studymaterial/presentation/pages/explore_flow/files_list_page/files_list_page.dart';

import 'package:studyportal/features/studymaterial/presentation/widgets/bookmarked_pin/pin_active.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/bookmarked_pin/pin_inactive.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/department_card/department_card.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/tools/pin_enum.dart';

class CourseCard extends StatelessWidget implements DepartmentCard {
  @override
  final String title;
  @override
  final String subtitle;
  final Department department;
  @override
  final Pin pin;
  @override
  final VoidCallback? onTap;

  final int semester;

  const CourseCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.department,
    required this.pin,
    required this.semester,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ??
          () {
            Navigator.of(context).push(FilesListPage.route(context, title));
          },
      child: Container(
        width: 160.w,
        height: 160.h,
        padding: const EdgeInsets.only(bottom: 12).w,
        decoration: BoxDecoration(
          color: themeColor,
          borderRadius: BorderRadius.circular(12).w,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12).w,
          child: Column(
            children: [
              Stack(
                children: [
                  Opacity(
                    opacity: 1,
                    child: SvgPicture.asset(
                      "lib/core/svgs/card_design.svg",
                      colorFilter: const ColorFilter.mode(
                          Colors.white38, BlendMode.srcIn),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: Container(
                        margin: const EdgeInsets.all(10).w,
                        child: (pin == Pin.inactive)
                            ? const PinInactive()
                            : (pin == Pin.active)
                                ? const SizedBox(child: PinActive())
                                : const Opacity(opacity: 0),
                      ))
                ],
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16).r,
                width: double.infinity.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          overflow: TextOverflow.clip,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        overflow: TextOverflow.clip,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Color get themeColor => department.themeColor;
}
