import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:studyportal/core/theme/constants.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/filter_tab/filter_tab.dart';

class FiltersPage extends StatefulWidget {
  const FiltersPage({super.key});

  @override
  State<FiltersPage> createState() => _FiltersPageState();
}

class _FiltersPageState extends State<FiltersPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var selectedIndex = 0;
    return Scaffold(
      backgroundColor: const Color(
        StudyPortalConstants.spOffWhite,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 32.0).r,
        child: const Column(
          children: [
            Text(
              "Filters",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Text(
              "Degree",
              style: TextStyle(
                color: Color(
                    StudyPortalConstants.spBottomNavBarUnselectedItemLabel),
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
