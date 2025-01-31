import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterTab extends StatelessWidget {
  const FilterTab({
    required this.title,
    super.key,
    required int selectedIndex,
    required int constraintIndex,
  })  : _selectedIndex = selectedIndex,
        _constraintIndex = constraintIndex;

  final int _selectedIndex;
  final int _constraintIndex;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: (_selectedIndex == _constraintIndex)
            ? const Color.fromRGBO(38, 48, 83, 1.0)
            : Colors.white,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: const Color(0xFFE3E2E8),
          width: 1.w,
        ),
      ),
      padding: const EdgeInsets.all(3).r,
      margin: const EdgeInsets.only(left: 4).w,
      width: 72.w,
      height: 36.h,
      alignment: Alignment.center,
      child: Text(
        title,
      ),
    );
  }
}
