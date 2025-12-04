import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Accountpage.dart';

class Searchpage extends StatelessWidget {
  Searchpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 173, 234, 175),
      body: ListView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),

                Image.asset('images/search.png', height: 40, width: 40),
                SizedBox(height: 20),
                Text(
                  'الــبــحــث',
                  style: GoogleFonts.cairo(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 20),
                //-------------------------------------------------------------------------
                Center(
                  child: Center(
                    child: Text(
                      'القائمة الجانبية',
                      style: GoogleFonts.amiri(fontSize: 18),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('page home', style: GoogleFonts.poppins()),
                  subtitle: Text(
                    'this is the page home',
                    style: GoogleFonts.poppins(),
                  ),
                ),
                Container(height: 1.3, color: Colors.black),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('أحــمد', style: GoogleFonts.cairo()),
                  subtitle: Text('مبرمج فلاتر', style: GoogleFonts.cairo()),
                  trailing: Icon(Icons.call),
                ),
                Container(height: 1, color: Colors.black),

                ListTile(
                  leading: CircleAvatar(
                    child: Text('A', style: GoogleFonts.oswald()),
                  ),
                  title: Text('عبدالله', style: GoogleFonts.cairo()),
                  subtitle: Text('مصمم واجهات UI', style: GoogleFonts.cairo()),
                  trailing: Icon(Icons.message),
                ),
                Container(height: 1, color: Colors.black),

                ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('الموقع', style: GoogleFonts.cairo()),
                  subtitle: Text(
                    'وداي العين - عدب',
                    style: GoogleFonts.cairo(),
                  ),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class list {
  final String title;
  final String subtitle;
  final IconData icon;
  list(this.title, this.subtitle, this.icon);
}
