import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrayerCard extends StatelessWidget {
  final String prayerName;
  final String prayerTime;
  final Color cardColor;
  final IconData prayerIcon;

  const PrayerCard({
    Key? key,
    required this.prayerName,
    required this.prayerTime,
    required this.cardColor,
    required this.prayerIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(prayerIcon, color: Colors.white, size: 40),
        title: Text(
          prayerName,
          style: GoogleFonts.cairo(color: Colors.white, fontSize: 25),
          
          textAlign: TextAlign.right,
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              prayerTime,
              style: GoogleFonts.cairo(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
