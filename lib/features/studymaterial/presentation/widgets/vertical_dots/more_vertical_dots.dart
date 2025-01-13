import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MoreVerticalDots extends StatelessWidget {
  final Color? color;
  final double? height;
  final double? width;

  const MoreVerticalDots({super.key, this.height, this.width, this.color});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "lib/core/svgs/more_vertical_dots.svg",
      colorFilter: ColorFilter.mode(color ?? Colors.black, BlendMode.srcIn),
      height: height ?? 16,
      width: width ?? 16,
      //Add onTap to show drop down menu
    );
  }
}
