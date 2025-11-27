import 'package:flutter/material.dart';
import 'Secandpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => Homepage(),
      },
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();

  void _login() {
    setState(() {
      _controller2.text = _controller1.text;
    });
  }

  void _Nav2() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Secandpage(name: _controller1.text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _controller1,
              decoration: InputDecoration(
                labelText: 'Enter the name',
                hintText: 'Abdullah',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),

            SizedBox(height: 20),

            TextField(
              controller: _controller2,
              decoration: InputDecoration(
                labelText: 'The name',
                hintText: 'Abdullah',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              readOnly: true,
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: _login,
              child: Text("Submit"),
            ),

            SizedBox(height: 15),

            ElevatedButton(
              onPressed: _Nav2,
              child: Text('Navigate'),
            ),
          ],
        ),
      ),
    );
  }
}
