import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studyportal/features/studymaterial/domain/entities/department.dart';
import 'package:studyportal/features/studymaterial/presentation/pages/explore_flow/course_list_page/course_list_page.dart';
import 'package:studyportal/features/studymaterial/presentation/utils/searchable.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/bookmarked_pin/pin_active.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/bookmarked_pin/pin_inactive.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/tools/pin_enum.dart';

class DepartmentCard extends StatelessWidget implements Searchable {
  @override
  final String title;
  final String subtitle;
  final Color themeColor;
  final Pin pin;
  final VoidCallback? onTap;

  const DepartmentCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.themeColor,
      required this.pin,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ??
          () {
            Navigator.of(context).push(
              CourseListPage.route(Department(
                  title: title, subtitle: subtitle, themeColor: themeColor)),
            );
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
                padding: const EdgeInsets.symmetric(horizontal: 16).w,
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
}
