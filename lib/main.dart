import 'package:flutter/material.dart';

import 'category.dart';
import 'dynamic.dart';
import 'message.dart';
import 'mine.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: AppHomePage());
  }
}

class AppHomePage extends StatefulWidget {
  @override
  _AppHomePageState createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {
  int _index = 0;

  List<Widget> _homeWidgets = [
    DynamicPage(),
    MessagePage(),
    CategoryPage(),
    MinePage(),
  ];

  void _onBottomNagigationBarTapped(index) {
    setState(() {
      _index = index;
    });
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ALEX"),
      ),
      body: IndexedStack(
        index: _index,
        children: _homeWidgets,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: _onBottomNagigationBarTapped,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black87,
        items: [
          _getBottomNavItem("动态", "images/dynamics_normal.png", "images/dynamics_pressed.png", 0),
          _getBottomNavItem("消息", "images/message_normal.png", "images/message_pressed.png", 1),
          _getBottomNavItem("分类浏览", "images/category_normal.png", "images/category_pressed.png", 2),
          _getBottomNavItem("个人中心", "images/people_normal.png", "images/people_pressed.png", 3)
        ],
      ),
    );
  }

  BottomNavigationBarItem _getBottomNavItem(
      String title, String normalIcon, String pressedIcon, int index) {
    return BottomNavigationBarItem(
      icon: _index == index
          ? Image.asset(
              pressedIcon,
              width: 32,
              height: 28,
            )
          : Image.asset(
              normalIcon,
              width: 32,
              height: 28,
            ),
      label: title,
    );
  }
}
