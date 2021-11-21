import 'package:clone_yt/Screens/Home.dart';
import 'package:clone_yt/Screens/SubsPage.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex=0;

  final List <dynamic>_screens= [
    HomePage(),
    const Scaffold(body: Center(child: Text("Explore"))),
    const Scaffold(body: Center(child: Text("Add"))),
    Subscriptions(),
    const Scaffold(body: Center(child: Text("Library"))),
  ];
  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      body:Stack(children:_screens.asMap().map((i,_screen) => MapEntry(i,Offstage(offstage:_selectedIndex!=i,child: _screen)))
          .values
          .toList(),
      ),
        bottomNavigationBar: BottomNavigationBar(
              currentIndex: _selectedIndex,
              type: BottomNavigationBarType.fixed,
              onTap: (int index) => setState(() => _selectedIndex = index),
              items: const[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  activeIcon: Icon(Icons.home_filled),
                  label: 'Home',
                ),

                BottomNavigationBarItem(icon: Icon(Icons.explore_outlined),
                  activeIcon: Icon(Icons.explore),
                  label: 'Explore',
                ),
                BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline_outlined),
                  activeIcon: Icon(Icons.add_circle_outline),
                  label: 'Explore',
                ),

                BottomNavigationBarItem(icon: Icon(Icons.subscriptions_outlined),
                  activeIcon: Icon(Icons.subscriptions),
                  label: 'Subscriptions',
                ),

                BottomNavigationBarItem(icon: Icon(Icons.video_library_outlined),
                  activeIcon: Icon(Icons.video_library),
                  label: 'Library',
                ),
              ]),
      );
  }

}
