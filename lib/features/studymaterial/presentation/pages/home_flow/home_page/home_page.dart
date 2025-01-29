import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:studyportal/features/studymaterial/data/pre_integration/hardcoded_stuff.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/bookmarked_section/bookmarked_section.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/downloaded_section/downloaded_section.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/pinned_section/pinned_section.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/recent_section/recent_section.dart';
import 'package:studyportal/features/studymaterial/presentation/pages/home_flow/see_all_pinned_page/see_all_pinned_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    //logic to get list of pinned courses from the database
    ///course cards coming from the db have to have the following information:
    ///title, subtitle, themeColor, pin, onTap

    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20, top: 20),
                width: size.width,
                height: 50.h,
                child: const Row(
                  children: [
                    Text(
                      "Home",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                    ),
                    Spacer()
                  ],
                ),
              ),
              PinnedSection(
                size: size,
                departmentCards: HardCodedConstants.departmentCards,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SeeAllPinnedPage()));
                },
              ),
              SizedBox(
                height: 24.h,
              ),
              RecentSection(
                  size: size, recentTiles: HardCodedConstants.recentTiles),
              SizedBox(
                height: 24.h,
              ),
              BookmarkedSection(
                  size: size,
                  bookmarkedTiles: HardCodedConstants.bookmarkedTiles),
              SizedBox(
                height: 24.h,
              ),
              DownloadedSection(
                  size: size,
                  downloadedTiles: HardCodedConstants.downloadedTiles),
              SizedBox(
                height: 12.h,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
