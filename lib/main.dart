import 'package:clone_yt/Screens/BottomNav.dart';
import 'package:clone_yt/VideoCard.dart';
import 'package:clone_yt/Screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.grey[900],
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.white,
          backgroundColor: Color(0XFF212121),
        ),
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 1;
    // This trailing comma makes auto-formatting nicer for build methods.
    return new Scaffold(
      bottomNavigationBar: NavBar(),
    );
  }
}
