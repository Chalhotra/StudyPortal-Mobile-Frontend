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
  @override
  final String title;
  const FileTile({super.key, required this.fileType, required this.title});

  @override
  State<FileTile> createState() => _FileTileState();
}

class _FileTileState extends State<FileTile> {
  var selectedValue = "USA";
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "USA", child: Text("USA")),
      const DropdownMenuItem(value: "Canada", child: Text("Canada")),
      const DropdownMenuItem(value: "Brazil", child: Text("Brazil")),
      const DropdownMenuItem(value: "England", child: Text("England")),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 336.w,
      height: 48.h,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FileIcons(fileType: widget.fileType),
          SizedBox(width: 16.w),
          Text(
            widget.title,
            style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
          ),
          const Spacer(),
          SizedBox(width: 8.w),
          const MoreVerticalDots()
        ],
      ),
    );
  }
}
