import 'package:flutter/material.dart';

class Secandpage extends StatelessWidget {
  final String name;
  Secandpage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scand Page")),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Text(name, style: TextStyle(fontSize: 30),),
            SizedBox(height: 20),
            Text('The Text From Home Page' , style: TextStyle(fontSize: 30),),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}

class Scad2 extends StatefulWidget {
  final String name;

  const Scad2({super.key, required this.name});

  @override
  State<Scad2> createState() => _Scad2State();
}

class _Scad2State extends State<Scad2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scand Page")),
      body: Column(
        children: [
          Text(widget.name),
          Text('data'),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Back'),
          ),
        ],
      ),
    );
  }
}
