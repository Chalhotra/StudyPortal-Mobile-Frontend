import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/more_info_button/more_info_button.dart';

class PinnedSection extends StatelessWidget {
  const PinnedSection({
    super.key,
    required this.size,
    required this.departmentCards,
    required this.onTap,
  });

  final Size size;
  final List<Widget> departmentCards;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12).r,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0xFFE3E2E8), width: 1.w),
          borderRadius: BorderRadius.circular(8)),
      width: size.width.w,
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                "lib/core/svgs/pin_inactive.svg",
                colorFilter:
                    const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                height: 16.h,
                width: 16.w,
              ),
              SizedBox(
                width: 4.w,
              ),
              const Text(
                "Pinned",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 12.h,
          ),
          SizedBox(
            height: 160.h,
            width: size.width.w,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: departmentCards.length,
              itemBuilder: (BuildContext context, int index) {
                return departmentCards[index];
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 16.w,
                );
              },
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Row(
            children: [
              const Spacer(),
              MoreInfoButton(
                onTap: onTap,
                icon: SvgPicture.asset(
                    height: 11.h, width: 6.w, "lib/core/svgs/right_caret.svg"),
                info: "See all",
              ),
            ],
          )
        ],
      ),
    );
  }
}
