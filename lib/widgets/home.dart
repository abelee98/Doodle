import 'package:flutter/material.dart';
import 'package:doodle/customIcons.dart';
import 'feed.dart';
import 'explore.dart';
import 'profile.dart';
import 'notifications.dart';
import 'draw.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [Feed(), Explore(), Draw(), Notifications(), Profile()];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(CustomIcons.home_filled, color: Colors.black, size: 20.0),
            icon: Icon(CustomIcons.home, color: Colors.black, size: 20.0),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(CustomIcons.explore_filled, color: Colors.black, size: 20.0),
            icon: Icon(CustomIcons.explore_unfilled, color: Colors.black, size: 20.0),
            title: Text("Explore"),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(CustomIcons.draw_filled, color: Colors.black, size: 20.0),
            icon: Icon(CustomIcons.draw_unfilled, color: Colors.black, size: 20.0),
            title: Text("Draw")
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(CustomIcons.bell_alt, color: Colors.black, size: 20.0),
            icon: Icon(CustomIcons.bell, color: Colors.black, size: 20.0),
            title: Text("Notifications")
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(CustomIcons.person, color: Colors.black, size: 25.0),
            icon: Icon(CustomIcons.person_outline, color: Colors.black, size: 25.0),
            title: Text("Profile")
          )
        ],
      ),
      body: _children[_currentIndex],
    );
  }
}