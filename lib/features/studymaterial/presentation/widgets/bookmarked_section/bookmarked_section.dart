import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studyportal/features/studymaterial/presentation/cubit/fetch_bookmarks/fetch_bookmarks_cubit.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/more_info_button/more_info_button.dart';
import 'package:studyportal/features/studymaterial/presentation/pages/see_all_bookmarked_page/see_all_bookmarked_page.dart';

class BookmarkedSection extends StatelessWidget {
  const BookmarkedSection({
    super.key,
    required this.size,
    required this.state,
  });

  final Size size;
  final FetchBookmarksState state;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      padding: const EdgeInsets.all(12),
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFE3E2E8)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  right: 8,
                  top: 4,
                  bottom: 4,
                ),
                child: SvgPicture.asset(
                  "lib/core/svgs/bookmarked_icon.svg",
                  height: 16,
                  width: 16,
                ),
              ),
              const Text(
                "Bookmarked",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          SizedBox(
            height: 228,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                // return bookmarkedTiles[index];
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 13,
                );
              },
            ),
          ),
          const SizedBox(
            height: 9,
          ),
          Row(
            children: [
              const Spacer(),
              MoreInfoButton(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SeeAllBookmarkedPage()));
                  },
                  info: "See all",
                  icon: SvgPicture.asset(
                    "lib/core/svgs/right_caret.svg",
                    height: 16,
                    width: 16,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
