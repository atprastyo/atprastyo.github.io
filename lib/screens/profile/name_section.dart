import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:my_profile_app/models/user.dart';

class NameSection extends StatefulWidget {
  const NameSection({Key? key}) : super(key: key);

  @override
  _NameSectionState createState() => _NameSectionState();
}

class _NameSectionState extends State<NameSection> {
  bool isFloating = true;

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance?.addPostFrameCallback((_) {
      Timer.periodic(const Duration(seconds: 1), (_) {
        setState(() {
          isFloating = !isFloating;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    const double avaSize = 160.0;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 24.0),
          AnimatedContainer(
            width: avaSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(avaSize / 2),
              color: Colors.blueGrey,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  offset: const Offset(0.0, 0.0),
                  color: Colors.blueGrey.shade700,
                  blurRadius: isFloating ? 12.0 : 4.0,
                )
              ],
            ),
            duration: const Duration(seconds: 1),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(avaSize / 2),
              // child: Image.asset('images/my_photo.jpg'),
              child: const Image(
                image: NetworkImage(
                  'https://lh3.googleusercontent.com/ogw/ADea4I7s57lFwoK1Y2OxgpNqV3df4-zg-TWO5b75pQHN=s192-c-mo',
                ),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            const User().name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8.0),
          Text(const User().role),
          const SizedBox(height: 8.0),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: const User().residence + ', ',
              children: <TextSpan>[
                TextSpan(
                  text: const User().city,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
