import 'package:flutter/material.dart';
import 'package:bottom_ani_nav_bar/bottom_ani_nav_bar.dart';
import 'package:netflix_clone/Screens/Download.dart';
import 'package:netflix_clone/Screens/Home.dart';
import 'package:netflix_clone/Screens/Menu.dart';
import 'package:netflix_clone/Screens/Search.dart';

class Bottomnav extends StatefulWidget {
  Bottomnav({Key key}) : super(key: key);

  @override
  _BottomnavState createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(color: Colors.blueAccent);
    return Scaffold(
          body: SafeArea(
            top: false,
            child: IndexedStack(index: _currentIndex, children: [
              HomePage(),
              Search(),
              Download(),
              Menu()
            ]),
          ),
          bottomNavigationBar: BottomAniNavBar(
              unselectedItemColor: Colors.red,
              currentIndex: _currentIndex,
              onTap: (int index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text(
                    'Home',
                    style: textStyle,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text(
                    'Search',
                    style: textStyle,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.file_download),
                  title: Text(
                    'Downloads',
                    style: textStyle,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.menu),
                  title: Text(
                    'Menu',
                    style: textStyle,
                  ),
                ),
              ]),
        );
  }
}