import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
import 'first_page.dart';
import 'salah_time.dart';
import 'salah.dart';
import 'adzan.dart';
import 'more.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();

 }
class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    FirstPage(),
    SalahTime(),
    Salah(),
    Adzan(),
    More(),
  ];

  final List<String> _pageTitles = [
    'الرئيسية',
    'أوقات الصلاة',
    'الصلاة',
    'الأذان',
    'المزيد',
  ];

  final List<IconData> _pageIcons = [
    Icons.home,
    Icons.access_time,
    Icons.mosque,
    Icons.volume_up,
    Icons.more,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _pages[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 59, 104, 96),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,

        items: [
          BottomNavigationBarItem(
            icon: Icon(_pageIcons[0]),
            label: _pageTitles[0],
          ),
          BottomNavigationBarItem(
            icon: Icon(_pageIcons[1]),
            label: _pageTitles[1],
          ),
          BottomNavigationBarItem(
            icon: Icon(_pageIcons[2]),
            label: _pageTitles[2],
          ),
          BottomNavigationBarItem(
            icon: Icon(_pageIcons[3]),
            label: _pageTitles[3],
          ),
          BottomNavigationBarItem(
            icon: Icon(_pageIcons[4]),
            label: _pageTitles[4],
          ),
        ],
      ),
    );
  }
}