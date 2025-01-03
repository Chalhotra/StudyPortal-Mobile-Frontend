import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studyportal/features/studymaterial/presentation/pages/home_page/components/more_info_button.dart';
import 'package:studyportal/features/studymaterial/presentation/pages/activity_page/activity_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: MoreInfoButton(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ActivityPage()));
            },
            info: "Activity",
            icon: SvgPicture.asset(
              "lib/core/svgs/right_caret.svg",
              height: 16,
              width: 16,
            )),
      ),
    );
  }
}
