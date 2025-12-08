import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'salah_time.dart';

class Adzan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pricolor,
      appBar: AppBar(
        backgroundColor: appbarcolor,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            ' الآذان',
            style: GoogleFonts.cairo(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: sccolor,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: ImageIcon(
              AssetImage('assets/images/adzan.png'),
              color: sccolor,
            ),
            onPressed: () {},
          ),
        ],
      ),
            body: Column(
        children: [
          SizedBox(height: 5),
          ImageIcon(
            AssetImage('assets/images/adzan2.png'),
            color: sccolor,
            size: 230,
          ),
          SizedBox(height: 0,),
          Container(
            height: 450,
            width: 400,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: sccolor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                buildIconArabicRow(arabicText:  'الآذان' , icon: Icons.toggle_on_sharp , color:  pricolor),
                  Divider(
                    color:pricolor ,
                  ),
                  SizedBox(height: 10,),
                   buildIconArabicRow(arabicText:  'الفجر' , icon: Icons.toggle_on_sharp , color:  pricolor),
                  Divider(
                    color:pricolor ,
                  ),
                  SizedBox(height: 10,),
                   buildIconArabicRow(arabicText:  'الظهر' , icon: Icons.toggle_off_outlined , color:  pricolor),
                  Divider(
                    color:pricolor ,
                  ),
                  SizedBox(height: 10,),
                   buildIconArabicRow(arabicText:  'العصر' , icon: Icons.toggle_off_outlined , color:  pricolor),
                  Divider(
                    color:pricolor ,
                  ),
                  SizedBox(height: 10,),
                   buildIconArabicRow(arabicText:  'المغرب' , icon: Icons.toggle_on_sharp , color:  pricolor),
                  Divider(
                    color:pricolor ,
                  ),
                  SizedBox(height: 10,),
                   buildIconArabicRow(arabicText:  'العشاء' , icon: Icons.toggle_off_outlined , color:  pricolor),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildIconArabicRow({
  required String arabicText,
  required IconData icon,
  required Color color,
  double arabicFontSize = 33,
  double iconSize = 40,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Icon(
        icon,
        color: color,
        size: iconSize,
      ),
      Text(
        arabicText,
        style: GoogleFonts.amiri(
          color: color,
          fontSize: arabicFontSize,
        ),
      ),
    ],
  );
}


