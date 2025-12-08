import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'constants.dart';

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  final TextEditingController noteController = TextEditingController();
  final String phone = "+967739929357";

  @override
  void dispose() {
    noteController.dispose();
    super.dispose();
  }

  Future<void> _sendToWhatsApp() async {
    final String message = noteController.text.trim();

    if (message.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('اكتب ملاحظتك أولاً')),
      );
      return;
    }

    final Uri url = Uri.parse("https://wa.me/$phone?text=${Uri.encodeComponent(message)}");

    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(url, mode: LaunchMode.externalApplication);
      } else {
        final Uri alt = Uri.parse("whatsapp://send?phone=$phone&text=${Uri.encodeComponent(message)}");
        if (await canLaunchUrl(alt)) {
          await launchUrl(alt, mode: LaunchMode.externalApplication);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('لا يمكن فتح واتساب على هذا الجهاز')),
          );
        }
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('حدث خطأ حاول مرة أخرى')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pricolor,
      appBar: AppBar(
        backgroundColor: appbarcolor,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            ' المزيد من الخيارات',
            style: GoogleFonts.cairo(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: sccolor,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more, color: sccolor),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // الإعدادات
            Card(
              child: ListTile(
                leading: Icon(Icons.settings, color: sccolor),
                title: Text(
                  'الإعدادات',
                  style: GoogleFonts.cairo(fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {},
              ),
            ),

            SizedBox(height: 10),

            // الحساب
            Card(
  child: ListTile(
    leading: Icon(Icons.color_lens, color: sccolor),
    title: Text(
      'الثيم',
      style: GoogleFonts.cairo(fontWeight: FontWeight.w600),
    ),
    trailing: Icon(Icons.arrow_forward_ios, size: 16),
    onTap: () {}, // بدون وظيفة، مجرد منظر
  ),
),


            SizedBox(height: 10),

            // نبذة عنا
            Card(
              child: ListTile(
                leading: Icon(Icons.info, color: sccolor),
                title: Text(
                  'نبذة عنا',
                  style: GoogleFonts.cairo(fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {},
              ),
            ),

            SizedBox(height: 30),

          
            Text(
              'إرسال ملاحظة',
              style: GoogleFonts.cairo(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: sccolor,
              ),
            ),

            SizedBox(height: 10),

          
            TextField(
              controller: noteController,
              maxLines: 4,
              style: GoogleFonts.cairo(
                color: sccolor,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                hintText: 'اكتب ملاحظتك هنا...',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            SizedBox(height: 15),

          
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: appbarcolor,
                  padding: EdgeInsets.symmetric(vertical: 14),
                ),
                onPressed: _sendToWhatsApp,
                child: Text(
                  'إرسال',
                  style: GoogleFonts.cairo(
                    color: sccolor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
