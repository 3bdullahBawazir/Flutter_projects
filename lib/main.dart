// lib/main.dart
import 'package:flutter/material.dart';
import 'splash_screen.dart'; 

void main() {
  runApp(prayertimes());
}

class prayertimes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'مواقيت الصلاة',
      theme: ThemeData(
        fontFamily: 'Cairo',
      ),
      home: SplashScreen(),
    );
  }
}