import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studyportal/core/theme/constants.dart';
import 'package:studyportal/core/widgets/sp_material_button/sp_material_button.dart';

void showReportSheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 434.h,
          color: Colors.white,
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(16.0).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Report",
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon:
                            SvgPicture.asset("lib/core/svgs/close_button.svg"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    "Report description",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF393939)),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    height: 150.h,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.top,
                      expands: true,
                      maxLines: null,
                      decoration: const InputDecoration(
                          // Adjust top padding

                          hintStyle: TextStyle(
                              color:
                                  Color(StudyPortalConstants.spGreyLittleDark)),
                          hintText: "Eg: Previous year quiz papers..."),
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  const SPMaterialButton(text: "Submit"),
                  // const Spacer(),
                ],
              ),
            ),
          ),
        );
      });
}
