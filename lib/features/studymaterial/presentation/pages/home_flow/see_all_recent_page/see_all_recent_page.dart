import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:studyportal/features/studymaterial/data/pre_integration/hardcoded_stuff.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/file_tabs/file_tabs.dart';

class SeeAllRecentPage extends StatelessWidget {
  const SeeAllRecentPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Recent",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24.sp),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              FileTabs(
                size: size,
                fileTiles: HardCodedConstants.fileTiles,
                screen: "Recent",
              )
            ]),
      ),
    );
  }
}
