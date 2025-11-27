import 'package:google_fonts/google_fonts.dart';

import 'Accountpage.dart';
import 'Homepage.dart';
import 'Settingpage.dart';
import 'package:flutter/material.dart';

import 'Searchpage.dart';

class Indexpage extends StatefulWidget {
  const Indexpage({super.key});

  @override
  State<Indexpage> createState() => _IndexpageState();
}

class _IndexpageState extends State<Indexpage> {
  int _bottomNavbar = 0;
  List<Widget> _pages = [
    Homepage(),
    Searchpage(),
    Settingpage(),
    Accountpage(),
  ];
  String _gettitle(int index) {
    switch (index) {
      case 0:
        return 'HOME PAGE';
      case 1:
        return 'SEARCH ';
      case 2:
        return 'SETTINGS  ';
      case 3:
        return 'Account ';
      default:
        return 'data';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: const Color.fromARGB(255, 173, 234, 175),
      appBar: AppBar(
        title: Text(
          _gettitle(_bottomNavbar),
          style: GoogleFonts.quando(
            //fontWeight: FontWeight.w800
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: IndexedStack(index: _bottomNavbar, children: _pages , ),
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavbar,
        onTap: (index) {
          setState(() {
            _bottomNavbar = index;
          });
        },
        unselectedItemColor: Colors.greenAccent,
        selectedItemColor: Colors.green,
          type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: 'الرئيسية',
            icon: Image.asset('images/home.png', width: 24, height: 24),
          ),
          BottomNavigationBarItem(label: 'البحث', icon: Icon(Icons.search)),
          BottomNavigationBarItem(
            label: 'الاعدادات',
            icon: Icon(Icons.settings_suggest),
          ),
          BottomNavigationBarItem(
            label: 'الحساب',
            icon: Icon(Icons.account_box),
          ),
        ],
      ),
    );
  }
}
