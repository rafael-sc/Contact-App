import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/avatar.jpg'),
              ),
              SizedBox(
                height: 10,
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
                  color: Colors.indigo.shade100,
                  letterSpacing: 1.8,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
              SizedBox(
                height: 20,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    height: 2,
                    color: Colors.white,
                  ),
                ),
              ),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: ListTile(
                      onTap: _openPhone,
                      leading: Icon(
                        Icons.phone,
                        size: 40,
                      ),
                      title: Text('+55 48 99813-0080',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.12)))),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: ListTile(
                      onTap: _openMail,
                      leading: Icon(
                        Icons.mail_outline_outlined,
                        size: 40,
                      ),
                      title: Text('rafaelcostati@gmail.com',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.12)))),
            ],
          ),
        ),
      ),
    );
  }

  _openPhone() {
    launch('tel://5548998130080');
  }

  _openMail() {
    launch(Uri(
            scheme: 'mailto',
            path: 'rafaelcostati@gmail.com',
            queryParameters: {'subject': 'Contact from your flutter app'})
        .toString());
  }
}
