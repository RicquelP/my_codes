import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:scanme_app/Screens/Archive.dart';
import 'package:scanme_app/Screens/E-Doctor.dart';
import 'package:scanme_app/Screens/HomePage.dart';
import 'package:scanme_app/Screens/ScanMe.dart';
import 'package:scanme_app/Screens/UV_Index.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _bottomNavIndex = 0;

  // Define your iconList with IconData
  List<IconData> iconList = [
    Icons.home,
    Icons.wb_sunny_outlined,
    Icons.archive_outlined,
    Icons.mail,
  ];

  List<String> labelList = [
    'Home',
    'UV/Index',
    'Archive',
    'E-Doctor',
  ];

  // Define your screens
  List<Widget> screens = [
    HomePage(),
    UV(),
    Archive(),
    E_Doctor(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_bottomNavIndex],
      floatingActionButton: Container(
        height: 100,
        width: 80,
        child: FloatingActionButton(
          backgroundColor: Colors.indigo[900],
          child: Text(
            'Scan',
            style: TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ScanScreen()),
            );
          },
          //params
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        activeColor: Colors.blue,
        inactiveColor: Colors.grey,
        backgroundColor: Colors.white,
        splashColor: Colors.blue.withOpacity(0.3),
      ),
    );
  }
}
