import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:odc/presentation/screeens/home/home_screen.dart';
import 'package:odc/presentation/screeens/news/news_screen.dart';
import 'package:odc/presentation/screeens/settings/settings_screen.dart';
import 'package:odc/presentation/styles/colors.dart';

class AppLayout extends StatefulWidget {
  AppLayout({Key? key}) : super(key: key);

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  int _currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    NewsScreen(),
    SettingsScreen()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
        bottomNavigationBar: BottomNavyBar(
          
      selectedIndex: _currentIndex,
      showElevation: true, // use this to remove appBar's elevation
      onItemSelected: (index) => setState(() {
        _currentIndex = index;
        // _pageController.animateToPage(index,
        //     duration: Duration(milliseconds: 300), curve: Curves.ease);
      }),
      items: [
        BottomNavyBarItem(
          icon: Icon(Icons.home_outlined),
          inactiveColor: Colors.black,
          textAlign: TextAlign.center,
          title: Text('Home'),
          activeColor: primaryColor,
        ),
        BottomNavyBarItem(
            inactiveColor: Colors.black,
            textAlign: TextAlign.center,
            icon: Icon(Icons.newspaper),
            title: Text('News'),
            activeColor:primaryColor),
        BottomNavyBarItem(
            inactiveColor: Colors.black,
            textAlign: TextAlign.center,
            icon: Icon(Icons.settings_outlined),
            title: Text('Settings'),
            activeColor: primaryColor),

      ],
    ));
  }
}
