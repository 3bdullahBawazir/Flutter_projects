import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Accountpage extends StatelessWidget {
  const Accountpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              
              Icon(
                Icons.account_circle_sharp,
                size: 45,
                color: Color(0xFF4CAF50),
              ),
              SizedBox(height: 20),
              Text(
                'الــحـــســـاب',
                style: GoogleFonts.cairo(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
