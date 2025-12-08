import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'salah_time.dart';

class Salah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pricolor,
      appBar: AppBar(
        backgroundColor:appbarcolor,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'الصلاة القادمة',
            style: GoogleFonts.cairo(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: sccolor,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.watch_later, color: sccolor),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 25),
          ImageIcon(
            AssetImage('assets/images/prayer.png'),
            color: sccolor,
            size: 250,
          ),
          SizedBox(height: 50),
          Container(
            height: 405,
            width: 400,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: sccolor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  ': تبدأ الصلاة القادمة خلال',
                  style: GoogleFonts.amiri(color: pricolor, fontSize: 30),
                ),
                SizedBox(height: 40),
                Container(
                  width: double.infinity,
                  child: Text(
                    '3 : 41 : 12',
                    style: GoogleFonts.cairo(
                      color: pricolor,
                      fontSize: 60,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 60),

                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: pricolor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // قيمة التكور
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SalahTime()),
                      );
                    },
                    child: Text(
                      'عرض مواقيت الصلاة',
                      style: GoogleFonts.cairo(
                        fontSize: 25,
                        color: sccolor,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
