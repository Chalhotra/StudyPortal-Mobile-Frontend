import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NotFoundBox extends StatelessWidget {
  const NotFoundBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10).r,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFF9CBCB), width: 1.w),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.all(10).r,
            child: SvgPicture.asset("lib/core/svgs/file_not_found.svg"),
          )),
          const Center(
              child: Padding(
            padding: EdgeInsets.all(4),
            child: Text("Not able to find what you want?"),
          )),
          const Center(
              child: Padding(
            padding: EdgeInsets.all(2),
            child: Text("Try requesting files",
                style: TextStyle(color: Color(0xFFCE4141))),
          )),
        ],
      ),
    );
  }
}
