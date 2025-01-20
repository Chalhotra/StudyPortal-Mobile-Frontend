import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studyportal/features/studymaterial/data/datasources/remote_data_source.dart';
import 'package:studyportal/features/studymaterial/data/repository/repository_impl.dart';
import 'package:studyportal/features/studymaterial/domain/usecases/load_explore_page.dart';
import 'package:studyportal/features/studymaterial/presentation/cubit/fetch_branches_cubit.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/bottom_navbar/sp_bottom_navbar.dart';
import 'package:studyportal/features/studymaterial/presentation/pages/explore_page/explore_page.dart';
import 'package:studyportal/features/studymaterial/presentation/pages/home_page/home_page.dart';
import 'package:studyportal/features/studymaterial/presentation/pages/profile_page/profile_page.dart';
import 'package:studyportal/core/theme/theme_data.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider(
        create: (_) => FetchBranchesCubit(
            loadExplorePage:
                LoadExplorePage(RepositoryImpl(RemoteDataSourceImpl()))))
  ], child: const StudyPortal()));
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
    return MaterialApp(
      theme: GlobalThemeData.lightThemeData,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: buildNavigator(),
        bottomNavigationBar:
            SPBottomNavBar(currentIndex: _currentIndex, onTap: _onTap),
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
