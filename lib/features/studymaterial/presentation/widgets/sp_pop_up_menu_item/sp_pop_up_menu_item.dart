import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studyportal/core/theme/constants.dart';

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
  double get height => 500;

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
        contentPadding: const EdgeInsets.only(left: 12, right: 26).r,
        horizontalTitleGap: 4.h,
        leading: SvgPicture.asset(
          widget.img,
          height: 16.h,
        ),
        title: Text(
          widget.title,
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: widget.textColor ??
                  const Color(StudyPortalConstants.spRoyalBlue)),
        ),
      ),
    );
  }
}
