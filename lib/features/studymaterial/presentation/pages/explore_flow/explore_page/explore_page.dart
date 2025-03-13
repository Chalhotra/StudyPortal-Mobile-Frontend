import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studyportal/features/studymaterial/data/pre_integration/hardcoded_stuff.dart';
import 'package:studyportal/features/studymaterial/presentation/cubit/fetch_branches/fetch_branches_cubit.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/loader/loader.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/department_card/department_card.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/scroll_section/scroll_section.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/tools/pin_enum.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  List<DepartmentCard> departmentCards = [];

  @override
  void initState() {
    super.initState();
    departmentCards = HardCodedConstants.departmentCards;
    _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.read<FetchBranchesCubit>().fetchBranches();
    return BlocBuilder<FetchBranchesCubit, FetchBranchesState>(
      builder: (context, state) {
        if (state is FetchBranchesLoading || state is FetchBranchesInitial) {
          return const Loader();
        } else if (state is FetchBranchesFailure) {
          return Text(state.message);
        } else if (state is FetchBranchesLoaded) {
          int index = 0;
          final List<DepartmentCard> departmentCards = state.branches.map((branch) {
            index++;
            return DepartmentCard(
              title: branch.name,
              subtitle: branch.department,
              themeColor: HardCodedConstants.courseCardColors[index],
              pin: Pin.none,
              onTap: () => {},
            );
            //add onTap
          }).toList();
          return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Row(
                children: [
                  Text(
                    "Explore",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24.sp,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  color: const Color(0xFFC8CBDC),
                ),
                child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                      color: const Color(0xFFC8CBDC),
                      width: 2.w,
                    ),
                    color: Colors.white,
                  ),
                  dividerColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelStyle: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(38, 48, 83, 1.0),
                  ),
                  tabs: const [
                    Tab(text: "Academics"),
                    Tab(text: "More"),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ScrollSection(
                      scrollSectionHeight: 160.h * 3.5 - 33.h,
                      scroll: true,
                      rows: 3.5,
                      departmentCards: departmentCards,
                    ),
                    ScrollSection(
                      scrollSectionHeight: 160.h * 3.5 - 33.h,
                      scroll: true,
                      rows: 3.5,
                      departmentCards: departmentCards.length > 2
                          ? [departmentCards[1], departmentCards[2]]
                          : [],
                    ),
                  ],
                ),
              ),
            ])),
          ));
        }
        return const SizedBox.shrink();
      },
    );
  }
}
