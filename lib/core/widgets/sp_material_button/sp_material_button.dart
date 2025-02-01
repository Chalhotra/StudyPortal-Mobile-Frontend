import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:studyportal/core/theme/constants.dart';

class SPMaterialButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  const SPMaterialButton({
    this.onTap,
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 62.r,
      minWidth: 352.r,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      color: const Color(StudyPortalConstants.spRoyalBlue),
      textColor: Colors.white,
      elevation: 0,
      onPressed: onTap ??
          () {
            Navigator.of(context).pop();
          },
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
      ),
    );
  }
}
