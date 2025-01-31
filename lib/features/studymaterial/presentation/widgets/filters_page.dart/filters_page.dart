import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:studyportal/core/theme/constants.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/filter_tab/filter_tab.dart';

class FiltersPage extends StatefulWidget {
  const FiltersPage({super.key});

  @override
  State<FiltersPage> createState() => _FiltersPageState();
}

class _FiltersPageState extends State<FiltersPage>
    with TickerProviderStateMixin {
  late final TabController _degreeTabController;
  var selectedDegree = 0;
  var selectedYear = 0;
  @override
  void initState() {
    super.initState();
    _degreeTabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _degreeTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        StudyPortalConstants.spOffWhite,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 32.0).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Filters",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(
              height: 24.h,
            ),
            const Text(
              "Degree",
              style: TextStyle(
                color: Color(
                    StudyPortalConstants.spBottomNavBarUnselectedItemLabel),
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              dividerColor: Colors.transparent,
              indicator: const BoxDecoration(),
              labelStyle: const TextStyle(color: Colors.white),
              labelPadding: const EdgeInsets.only(left: 0, right: 12).w,
              controller: _degreeTabController,
              onTap: (index) {
                setState(() {
                  selectedDegree = index;
                  _degreeTabController.animateTo(index,
                      duration: const Duration(milliseconds: 500));
                });
              },
              tabs: [
                FilterTab(
                    title: "B.Tech",
                    selectedIndex: selectedDegree,
                    constraintIndex: 0),
                FilterTab(
                    title: "M.Tech",
                    selectedIndex: selectedDegree,
                    constraintIndex: 1),
                FilterTab(
                    title: "Ph.D",
                    selectedIndex: selectedDegree,
                    constraintIndex: 2),
              ],
            ),
            SizedBox(
              height: 32.h,
            ),
            const Text(
              "Year",
              style: TextStyle(
                color: Color(
                    StudyPortalConstants.spBottomNavBarUnselectedItemLabel),
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Wrap(
              direction: Axis.horizontal,
              spacing: 12.r,
              runSpacing: 12.r,
              children: [
                MultiFilterTab(
                  onTap: () {
                    setState(() {
                      selectedYear = 0;
                    });
                  },
                  title: "All",
                  selectedIndex: selectedYear,
                  constraintIndex: 0,
                ),
                MultiFilterTab(
                  title: "1st Year",
                  selectedIndex: selectedYear,
                  constraintIndex: 1,
                  onTap: () {
                    setState(() {
                      selectedYear = 1;
                    });
                  },
                ),
                MultiFilterTab(
                  title: "2nd Year",
                  selectedIndex: selectedYear,
                  constraintIndex: 2,
                  onTap: () {
                    setState(() {
                      selectedYear = 2;
                    });
                  },
                ),
                MultiFilterTab(
                  title: "3rd Year",
                  selectedIndex: selectedYear,
                  constraintIndex: 3,
                  onTap: () {
                    setState(() {
                      selectedYear = 3;
                    });
                  },
                ),
                MultiFilterTab(
                  title: "4th Year",
                  selectedIndex: selectedYear,
                  constraintIndex: 4,
                  onTap: () {
                    setState(() {
                      selectedYear = 4;
                    });
                  },
                ),
                MultiFilterTab(
                  title: "5th Year",
                  selectedIndex: selectedYear,
                  constraintIndex: 5,
                  onTap: () {
                    setState(() {
                      selectedYear = 5;
                    });
                  },
                ),
              ],
            ),
            const Spacer(
              flex: 5,
            ),
            Align(
              alignment: Alignment.center,
              child: MaterialButton(
                height: 62.r,
                minWidth: 352.r,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                color: const Color(StudyPortalConstants.spRoyalBlue),
                textColor: Colors.white,
                elevation: 0,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  "Done",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class MultiFilterTab extends StatelessWidget {
  final String title;
  final int selectedIndex;
  final int constraintIndex;
  final Function()? onTap;
  const MultiFilterTab(
      {super.key,
      required this.title,
      required this.selectedIndex,
      required this.constraintIndex,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      onTap: onTap,
      child: FilterTab(
        tabBar: false,
        title: title,
        selectedIndex: selectedIndex,
        constraintIndex: constraintIndex,
      ),
    );
  }
}
