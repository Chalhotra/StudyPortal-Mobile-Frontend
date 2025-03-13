import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/bottom_navbar/sp_bottom_navbar.dart';
import 'package:studyportal/features/studymaterial/presentation/pages/explore_flow/explore_page/explore_page.dart';
import 'package:studyportal/features/studymaterial/presentation/pages/home_flow/home_page/home_page.dart';
import 'package:studyportal/features/studymaterial/presentation/pages/profile_flow/profile_page/profile_page.dart';
import 'package:studyportal/core/theme/theme_data.dart';

void main() {
  runApp(const StudyPortal());
}

class StudyPortal extends StatefulWidget {
  const StudyPortal({super.key});

  @override
  State<StudyPortal> createState() => _StudyPortalState();
}

class _StudyPortalState extends State<StudyPortal> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const ExplorePage(),
    const ProfilePage(),
  ];
  Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
  };

  void _onTap(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      enableScaleWH: () => false,
      enableScaleText: () => false,
      builder: (context, child) {
        return MaterialApp(
          theme: GlobalThemeData.lightThemeData,
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: Scaffold(
        body: buildNavigator(),
        bottomNavigationBar:
            SPBottomNavBar(currentIndex: _currentIndex, onTap: _onTap),
        //Edit BottomNavBar to show on page routes through Navigator.push
      ),
    );
  }

  Navigator buildNavigator() {
    return Navigator(
      key: navigatorKeys[_currentIndex],
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute<Widget>(
            builder: (BuildContext _) => _pages.elementAt(_currentIndex));
      },
    );
  }
}
