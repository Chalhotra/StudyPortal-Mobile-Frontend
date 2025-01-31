import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoreInfoButton extends StatelessWidget {
  final VoidCallback onTap;
  final String info;
  final Widget icon;
  const MoreInfoButton(
      {super.key, required this.info, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Text(
            info,
            style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
          ),
          SizedBox(
            width: 2.w,
          ),
          SizedBox(
            height: 16.h,
            width: 16.w,
            child: icon,
          )
        ],
      ),
    );
  }
}
