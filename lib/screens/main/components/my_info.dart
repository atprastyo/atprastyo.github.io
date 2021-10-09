import 'package:flutter/material.dart';
import 'package:my_profile_app/models/user.dart';

import '../../../theme/constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: const Color(0xFF242430),
        child: Column(
          children: <Widget>[
            const Spacer(flex: 2),
            const CircleAvatar(
              radius: 50,
              backgroundColor: bodyTextColor,
              backgroundImage: AssetImage('assets/images/my_photo.png'),
            ),
            const Spacer(),
            Text(
              User.myProfile().name,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              User.myProfile().role,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
