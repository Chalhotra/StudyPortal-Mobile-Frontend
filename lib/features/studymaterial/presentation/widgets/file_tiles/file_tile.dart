import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studyportal/core/theme/constants.dart';
import 'package:studyportal/core/widgets/sp_material_button/sp_material_button.dart';
import 'package:studyportal/features/studymaterial/presentation/utils/searchable.dart';
import 'package:studyportal/features/studymaterial/presentation/utils/show_report_sheet/show_report_sheet.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/file_icons/file_icons.dart';

import 'package:studyportal/features/studymaterial/presentation/widgets/tools/file_type_enum.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/vertical_dots/more_vertical_dots.dart';

class FileTile extends StatefulWidget implements Searchable {
  final FileType fileType;
  final String courseCode;
  @override
  final String title;
  const FileTile(
      {super.key,
      required this.fileType,
      required this.title,
      required this.courseCode});

  @override
  State<FileTile> createState() => _FileTileState();
}

class _FileTileState extends State<FileTile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: Row(
        children: [
          FileIcons(fileType: widget.fileType),
          SizedBox(width: 16.w),
          Container(
            constraints: BoxConstraints(maxWidth: 252.w),
            child: Text(
              widget.title,
              style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp),
            ),
          ),
          const Spacer(),
          SizedBox(width: 8.w),
          const MoreVerticalDots()
        ],
      ),
    );
  }
}
