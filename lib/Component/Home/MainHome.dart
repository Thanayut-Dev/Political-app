import 'package:PoliticalParty/Component/Activity/ActivityPage.dart';
import 'package:PoliticalParty/Component/Home/HomePage.dart';
import 'package:PoliticalParty/Component/News/NewsPage.dart';
import 'package:PoliticalParty/Component/Trend/TrendPage.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class HomeMainPage extends StatefulWidget {
  @override
  _HomeMainPageState createState() => _HomeMainPageState();
}

class _HomeMainPageState extends State<HomeMainPage>
    with TickerProviderStateMixin {
  int currentPage = 0;
  Color primaryColor;

  // PageController _pageController;

  @override
  void initState() {
    super.initState();
  }

  Widget currentpage(position) {
    if (position == 0) {
      return HomePage();
    }
    if (position == 1) {
      // return Center(
      //     );
      return TrendPage();
    }
    if (position == 2) {
      return NewsPage();
    }
    if (position == 3) {
      return ActivityPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      bottomNavigationBar: FancyBottomNavigation(
        textColor: Theme.of(context).hintColor,
        activeIconColor: Colors.white,
        circleColor: primaryColor,
        inactiveIconColor: primaryColor,
        initialSelection: 0,
        tabs: [
          TabData(iconData: Icons.home, title: "หน้าหลัก"),
          TabData(iconData: Icons.trending_up, title: "กระแสนิยม"),
          TabData(iconData: Icons.library_books, title: "ข่าว"),
          TabData(iconData: Icons.access_time, title: "กิจกรรม"),
        ],
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
      body: currentpage(currentPage),
    );
  }
}
