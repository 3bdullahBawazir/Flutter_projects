// lib/first_page.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'prayer_card.dart';
import 'constants.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarcolor,
        title: Align(
          alignment: Alignment.center,
          child: Text(
            'الصفحة الرئيسية ',
            style: GoogleFonts.cairo(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: sccolor,
            ),
          ),
        ),
      ),
      backgroundColor: pricolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 150),
                      Text(
                        'من نور الصلاة نبدأ.. أهلًا بك في تطبيق',
                        style: GoogleFonts.amiri(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'صـــلاتــي',
                        style: GoogleFonts.cairo(
                          color: Colors.white,
                          fontSize: 65,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 80),
                      Text(
                        '{وَأَقِيمُوا الصَّلَاةَ وَآتُوا الزَّكَاةَ وَارْكَعُوا مَعَ الرَّاكِعِينَ}',
                        style: GoogleFonts.amiri(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 20),
                      IconButton(
                        icon: Icon(Icons.menu_book, color: sccolor,size: 90,),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
