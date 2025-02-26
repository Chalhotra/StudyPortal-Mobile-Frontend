import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studyportal/core/theme/constants.dart';
import 'package:studyportal/features/studymaterial/presentation/utils/show_report_sheet/show_report_sheet.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/sp_pop_up_menu_item/sp_pop_up_menu_item.dart';

class MoreVerticalDots extends StatelessWidget {
  final Color? color;
  final double? height;
  final double? width;

  const MoreVerticalDots({super.key, this.height, this.width, this.color});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      constraints: BoxConstraints(maxHeight: 120.h, maxWidth: 120.w),
      padding: EdgeInsets.zero,
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.r),
          side: BorderSide(
              width: 1.w,
              color: const Color(
                StudyPortalConstants.spStrokeGrey,
              ))),
      color: Colors.white,
      menuPadding: EdgeInsets.only(top: 6.h, bottom: 7.h),
      itemBuilder: (context) => [
        SPPopupMenuItem(
            img: "lib/core/svgs/bookmark.svg",
            "Bookmark",
            onTap: () {},
            title: "Bookmark"),
        SPPopupMenuItem(
            img: "lib/core/svgs/download_icon.svg",
            "Download",
            onTap: () {},
            title: "Download"),
        SPPopupMenuItem(
            img: "lib/core/svgs/report_icon.svg",
            textColor: const Color(StudyPortalConstants.spRed),
            "Report", onTap: () {
          showReportSheet(context);
        }, title: "Report"),
      ],
      child: SvgPicture.asset(
        "lib/core/svgs/more_vertical_dots.svg",
        colorFilter: ColorFilter.mode(color ?? Colors.black, BlendMode.srcIn),
        height: height ?? 16.h,
        width: width ?? 16.w,
      ),
    );
  }
}
