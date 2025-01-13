import 'package:flutter/material.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/file_icons/file_icons.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/vertical_dots/more_vertical_dots.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/tools/file_type_enum.dart';

class FileTile extends StatelessWidget {
  final FileType fileType;
  final String title;
  const FileTile({super.key, required this.fileType, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 336,
      height: 48,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FileIcons(fileType: fileType),
          const SizedBox(
            width: 16,
          ),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
          ),
          const Spacer(),
          const MoreVerticalDots(),
          const SizedBox(
            width: 8,
          ),
        ],
      ),
    );
  }
}
