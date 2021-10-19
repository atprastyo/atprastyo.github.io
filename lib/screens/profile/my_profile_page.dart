import 'package:flutter/material.dart';

import 'name_section.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DecoratedBox(
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: Colors.black12,
                offset: Offset(-4, 4),
                blurRadius: 6,
                spreadRadius: 8
              ),
              BoxShadow(
                color: Colors.black12,
                offset: Offset(4, -4),
                blurRadius: 6,
                spreadRadius: 8
              ),
            ],
            color: Colors.white
          ),
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            children: <Widget>[
              const NameSection(),
              const SizedBox(height: 16.0),
              // Text('Project', style: textTheme.headline6),
            ],
          ),
        ),
      ),
    );
  }
}
