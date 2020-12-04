import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/avatar.jpg'),
              ),
              Text(
                "Rafael Costa",
                style: TextStyle(
                    fontSize: 36.0,
                    color: Colors.white,
                    fontFamily: 'Source Code Pro',
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Mobile Developer",
                style: TextStyle(
                  fontSize: 28.0,
                  color: Colors.white,
                  fontFamily: 'Roboto',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
