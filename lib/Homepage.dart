import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Image.asset('images/home.png', height: 40, width: 40),
              SizedBox(height: 20),
              Text(
                'الرئيسية',
                style: GoogleFonts.cairo(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  color: Colors.black87,
                ),
              ),
                            SizedBox(height: 30),
              TextField(
                controller: _controller1,
                decoration: InputDecoration(
                  labelText: 'أدخـــل أي نــص',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              SizedBox(height: 30),
              TextField(
                controller: _controller2,
                decoration: InputDecoration(
                  labelText: '',
                  hintText: '.........نص',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                readOnly: true,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  _controller2.text = _controller1.text;
                },
                child: Text("copy" ,  style: GoogleFonts.cairoPlay(
                  fontSize: 30,
                  color: Colors.green
                  
                ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
