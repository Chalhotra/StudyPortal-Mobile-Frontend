import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/file_icons/file_icons.dart';

import 'package:studyportal/features/studymaterial/presentation/widgets/tools/file_type_enum.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/vertical_dots/more_vertical_dots.dart';

class FileTile extends StatelessWidget {
  final FileType fileType;
  final String title;
  const FileTile({super.key, required this.fileType, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 336.w,
      height: 48.h,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FileIcons(fileType: fileType),
          SizedBox(width: 16.w),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
          ),
          const Spacer(),
          const MoreVerticalDots(),
          SizedBox(width: 8.w),
        ],
      ),
    );
  }
}
