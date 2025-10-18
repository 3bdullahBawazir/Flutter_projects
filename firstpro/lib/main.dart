import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _subhanAllah = 0;
  int _allahuAkbar = 0;
  int _alhamdulillah = 0;

  String _currentDhikr = ''; 

  void _selectDhikr(String dhikr) {
    setState(() {
      _currentDhikr = dhikr;
      if (dhikr == 'سبحان الله') _subhanAllah++;
      if (dhikr == 'الله أكبر') _allahuAkbar++;
      if (dhikr == 'الحمد لله') _alhamdulillah++;
    });
  }

  void _resetCounters() {
    setState(() {
      _subhanAllah = 0;
      _allahuAkbar = 0;
      _alhamdulillah = 0;
      _currentDhikr = '';
    });
  }

  int get _currentCounter {
    if (_currentDhikr == 'سبحان الله') return _subhanAllah;
    if (_currentDhikr == 'الله أكبر') return _allahuAkbar;
    if (_currentDhikr == 'الحمد لله') return _alhamdulillah;
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xfff0f4e3),
        appBar: AppBar(
          title: Text('مسبحة إلكترونية', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          backgroundColor: Color(0xff2e7d32),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _currentDhikr.isEmpty ? 'اضغط على أي ذكر' : _currentDhikr,
                style: TextStyle(fontSize: 25, color: Color(0xff1b5e20)),
              ),
              SizedBox(height: 20),
              Text(
                '$_currentCounter',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Color(0xfff9a825)),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => _selectDhikr('سبحان الله'),
                    style: ElevatedButton.styleFrom(backgroundColor: Color(0xff388e3c)),
                    child: Text('سبحان الله', style: TextStyle(color: Colors.white)),
                  ),
                  ElevatedButton(
                    onPressed: () => _selectDhikr('الله أكبر'),
                    style: ElevatedButton.styleFrom(backgroundColor: Color(0xff43a047)),
                    child: Text('الله أكبر', style: TextStyle(color: Colors.white)),
                  ),
                  ElevatedButton(
                    onPressed: () => _selectDhikr('الحمد لله'),
                    style: ElevatedButton.styleFrom(backgroundColor: Color(0xff66bb6a)),
                    child: Text('الحمد لله', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: _resetCounters,
                style: ElevatedButton.styleFrom(backgroundColor: Color(0xffc62828)),
                child: Text('إعادة العد', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
