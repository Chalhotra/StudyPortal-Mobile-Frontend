import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studyportal/core/theme/constants.dart';
import 'package:studyportal/features/studymaterial/presentation/utils/show_report_sheet/show_report_sheet.dart';

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

class SPPopupMenuItem extends PopupMenuEntry<String> {
  final Color? textColor;
  final String title;
  final String value;
  final String img;
  final Function()? onTap;

  const SPPopupMenuItem(this.value,
      {super.key,
      this.textColor,
      required this.img,
      required this.onTap,
      required this.title});

  @override
  State<StatefulWidget> createState() => _SPPopupMenuItemState();

  @override
  double get height => 500.h;

  @override
  bool represents(String? v) {
    return value == v;
  }
}

class _SPPopupMenuItemState extends State<SPPopupMenuItem> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        minTileHeight: 26.h,
        titleAlignment: ListTileTitleAlignment.center,
        onTap: widget.onTap,
        minLeadingWidth: 0,
        contentPadding: EdgeInsets.only(left: 12.w, right: 26.w),
        horizontalTitleGap: 4.w,
        leading: SvgPicture.asset(
          widget.img,
          height: 16.h,
        ),
        title: Text(
          widget.title,
          style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: widget.textColor ??
                  const Color(StudyPortalConstants.spRoyalBlue)),
        ),
      ),
    );
  }
}

class FilterTab extends StatelessWidget {
  const FilterTab({
    required this.title,
    super.key,
    required int selectedIndex,
    this.tabBar = true,
    required int constraintIndex,
  })  : _selectedIndex = selectedIndex,
        _constraintIndex = constraintIndex;

  final int _selectedIndex;
  final int _constraintIndex;
  final String title;
  final bool tabBar;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      decoration: BoxDecoration(
        color: (_selectedIndex == _constraintIndex)
            ? const Color.fromRGBO(38, 48, 83, 1.0)
            : Colors.white,
        borderRadius: BorderRadius.circular(4.r),
        border: Border.all(
          color: const Color(StudyPortalConstants.spStrokeGrey),
          width: 1.w,
        ),
      ),
      padding: EdgeInsets.all(3.r),
      margin: EdgeInsets.only(left: 4.w),
      constraints: BoxConstraints(minWidth: 36.r, maxWidth: 100.r),
      height: 36.h,
      alignment: Alignment.center,
      child: Text(
        style: !tabBar
            ? TextStyle(
                color: _selectedIndex == _constraintIndex
                    ? Colors.white
                    : const Color(StudyPortalConstants.spRoyalBlue))
            : const TextStyle(),
        title,
      ),
    );
  }
}
