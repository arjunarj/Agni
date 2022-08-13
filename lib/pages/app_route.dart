// ignore_for_file: prefer_const_constructors

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:agni/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:cnav/cnav.dart';

class AppRoute extends StatefulWidget {
  AppRoute({Key? key}) : super(key: key);

  @override
  State<AppRoute> createState() => _AppRouteState();
}

class _AppRouteState extends State<AppRoute> {
  // final user = FirebaseAuth.instance.currentUser!;
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  // ignore: prefer_final_fields
  List<Widget> _widgetOptions = <Widget>[
    Text("Bruhh0"),
    Text("Bruhh1"),
    Text("Bruhh2"),
    Text("Bruhh3"),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: CNav(
          iconSize: 30.0,
          selectedColor: Color(0xff040307),
          strokeColor: Color(0x30040307),
          unSelectedColor: Color(0xffacacac),
          backgroundColor: Colors.white,
          items: [
            CNavItem(
              icon: Icon(Icons.home),
            ),
            CNavItem(
              icon: Icon(Icons.shopping_bag),
            ),
            CNavItem(
              icon: Icon(Icons.lightbulb_outline),
            ),
            CNavItem(
              icon: Icon(Icons.search),
            ),
            CNavItem(
              icon: Icon(Icons.account_circle),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ));
  }
}
