import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agus Tri Prastyo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        accentColor: Colors.white54,
        splashColor: Colors.blueGrey,
      ),
      home: MyProfilePage(title: 'Welcome'),
    );
  }
}

class MyProfilePage extends StatefulWidget {
  MyProfilePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    final double avaSize = 160.0;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: avaSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(avaSize / 2),
                color: Colors.blueGrey,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(avaSize / 2),
                child: Padding(
                  padding: const EdgeInsets.only(left: 2.0),
                  child: Image.asset('images/my_photo.png'),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              User.myProfile().name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(User.myProfile().role),
          ],
        ),
      ),
    );
  }
}

class User {
  const User(this.name, this.role);

  factory User.myProfile() =>
      User('Agus Tri Prastyo', 'Software Engineer - Mobile');

  final String name;
  final String role;
}
