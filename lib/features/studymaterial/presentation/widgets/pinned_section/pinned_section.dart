import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studyportal/features/studymaterial/data/pre_integration/hardcoded_stuff.dart';
import 'package:studyportal/features/studymaterial/presentation/cubit/fetch_pins/fetch_pins_cubit.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/course_card/course_card.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/loader/loader.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/more_info_button/more_info_button.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/tools/pin_enum.dart';

class PinnedSection extends StatelessWidget {
  const PinnedSection({
    super.key,
    required this.state,
    required this.size,
    required this.onTap,
  });

  final FetchPinsState state;
  final Size size;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0xFFE3E2E8), width: 1),
          borderRadius: BorderRadius.circular(8)),
      width: size.width,
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                "lib/core/svgs/pin_inactive.svg",
                colorFilter:
                    const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                height: 16,
                width: 16,
              ),
              const SizedBox(
                width: 4,
              ),
              const Text(
                "Pinned",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 160,
            width: size.width,
            child: BlocBuilder<FetchPinsCubit, FetchPinsState>(
                builder: (context, state) {
              if (state is FetchPinsLoading || state is FetchPinsInitial) {
                return const Loader();
              } else if (state is FetchPinsFailure) {
                return Text(state.message);
              } else if (state is FetchPinsLoaded) {
                int index = 0;
                final List<CourseCard> pinnedCards = state.pins.map((branch) {
                  index++;
                  return CourseCard(
                    title: branch.name,
                    subtitle: branch.department,
                    themeColor: HardCodedConstants.courseCardColors[index],
                    pin: Pin.none,
                    onTap: () => {},
                  );
                  //add onTap
                }).toList();
                if (pinnedCards.isEmpty) {
                  return const Center(
                    child: Text("No Pins Added"),
                  );
                } else {
                  return ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: pinnedCards.length,
                    itemBuilder: (BuildContext context, int index) {
                      return pinnedCards[index];
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 16,
                      );
                    },
                  );
                }
              }
              return const SizedBox.shrink();
            }),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              const Spacer(),
              MoreInfoButton(
                onTap: onTap,
                icon: SvgPicture.asset(
                    height: 11, width: 6, "lib/core/svgs/right_caret.svg"),
                info: "See all",
              ),
            ],
          )
        ],
      ),
    );
  }
}
