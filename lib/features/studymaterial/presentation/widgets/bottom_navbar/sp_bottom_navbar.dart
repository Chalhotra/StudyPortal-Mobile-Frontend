import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studyportal/core/theme/constants.dart';

class SPBottomNavBar extends StatefulWidget {
  final Function(int) onTap;
  final int currentIndex;
  const SPBottomNavBar(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  State<SPBottomNavBar> createState() => _SPBottomNavBarState();
}

class _SPBottomNavBarState extends State<SPBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
      selectedItemColor: Theme.of(context).colorScheme.secondary,
      unselectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
      unselectedItemColor:
          const Color(StudyPortalConstants.spBottomNavBarUnselectedItemLabel),
      selectedFontSize: 12,
      items: [
        BottomNavigationBarItem(
            activeIcon: SvgPicture.asset("lib/core/svgs/home_icon_active.svg"),
            icon: SvgPicture.asset("lib/core/svgs/home_icon_inactive.svg"),
            label: "Home"),
        BottomNavigationBarItem(
            activeIcon:
                SvgPicture.asset("lib/core/svgs/explore_icon_active.svg"),
            icon: SvgPicture.asset("lib/core/svgs/explore_icon_inactive.svg"),
            label: "Explore"),
        BottomNavigationBarItem(
            activeIcon:
                SvgPicture.asset("lib/core/svgs/profile_icon_active.svg"),
            icon: SvgPicture.asset("lib/core/svgs/profile_icon_inactive.svg"),
            label: "Profile"),
      ],
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
    );
  }
}
