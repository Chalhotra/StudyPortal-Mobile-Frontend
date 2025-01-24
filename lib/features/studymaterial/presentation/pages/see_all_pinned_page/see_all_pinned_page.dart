import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studyportal/features/studymaterial/data/pre_integration/hardcoded_stuff.dart';
import 'package:studyportal/features/studymaterial/presentation/cubit/fetch_pins/fetch_pins_cubit.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/course_card/course_card.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/loader/loader.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/scroll_section/scroll_section.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/tools/pin_enum.dart';

class SeeAllPinnedPage extends StatelessWidget {
  const SeeAllPinnedPage({super.key});

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    context.read<FetchPinsCubit>().fetchPins();
    return BlocBuilder<FetchPinsCubit, FetchPinsState>(
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
          return Scaffold(
            appBar: AppBar(
              titleSpacing: 0,
              title: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Pinned",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                ),
              ),
            ),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    ScrollSection(
                        scroll: true, rows: 4, courseCards: pinnedCards),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
