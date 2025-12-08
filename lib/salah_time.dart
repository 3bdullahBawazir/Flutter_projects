import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mwaqit/prayer_card.dart';
import 'adzan.dart';
import 'constants.dart';

class SalahTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarcolor,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'مواقيت الصلاة',
            style: GoogleFonts.cairo(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: sccolor,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: sccolor),
            onPressed: () {
              //Navigator.push(context,
              // MaterialPageRoute(builder: (context) => Adzan()));
            },
          ),
          IconButton(
            icon: Icon(Icons.location_on_outlined, color: sccolor),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: pricolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: sccolor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' الأحــد 7 ديسمبر ',
                          style: GoogleFonts.cairo(
                            color: pricolor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Text(
                          'عــــــدب ',
                          style: GoogleFonts.cairo(
                            color: pricolor,
                            fontSize: 12,
                          ),
                        ),
                        Icon(Icons.location_on, color: pricolor, size: 15),
                          ],
                        ),
                        
                      ],
                    ),
                    Icon(Icons.calendar_today, color: pricolor, size: 28),
                  ],
                ),
              ),

              Container(
                child: Column(
                  children: [
                    PrayerCard(
                      prayerName: 'الفجر',
                      prayerTime: '5:05',
                      cardColor: Color(0xFF34495E),
                      prayerIcon: Icons.nightlight,
                    ),
                    SizedBox(height: 12),
                
                    PrayerCard(
                      prayerName: 'الشروق',
                      prayerTime: '5:58',
                      cardColor: Color(0xFFF1C40F),
                      prayerIcon: Icons.wb_sunny,
                    ),
                    SizedBox(height: 12),
                
                    PrayerCard(
                      prayerName: 'الظهر',
                      prayerTime: '12:15',
                      cardColor: Color.fromARGB(255, 87, 156, 115),
                      prayerIcon: Icons.brightness_5,
                    ),
                    SizedBox(height: 12),
                
                    PrayerCard(
                      prayerName: "العصر",
                      prayerTime: '3:25',
                      cardColor: Color.fromARGB(255, 74, 101, 116),
                      prayerIcon: Icons.brightness_6,
                    ),
                    SizedBox(height: 12),
                
                    PrayerCard(
                      prayerName: 'المغرب',
                      prayerTime: '5:20',
                      cardColor: Color(0xFF2C3E50),
                      prayerIcon: Icons.nightlight_round,
                    ),
                    SizedBox(height: 12),
                
                    PrayerCard(
                      prayerName: 'العشاء',
                      prayerTime: '7:45',
                      cardColor: Color(0xFF34495E), 
                      prayerIcon: Icons.nightlight,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}