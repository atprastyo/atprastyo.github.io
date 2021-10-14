import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/profile/my_profile_page.dart';
import 'theme/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agus Tri Prastyo',
      theme: darkMode
          ? ThemeData.dark().copyWith(
              primaryColor: primaryColor,
              scaffoldBackgroundColor: bgColor,
              canvasColor: bgColor,
              textTheme:
                  GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
                      .apply(bodyColor: Colors.white)
                      .copyWith(
                        bodyText1: const TextStyle(color: bodyTextColor),
                        bodyText2: const TextStyle(color: bodyTextColor),
                      ),
            )
          : ThemeData.light().copyWith(
              textTheme:
                  GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
                      .apply(bodyColor: Colors.black45)
                      .copyWith(
                        bodyText1: const TextStyle(color: bodyTextColor),
                        bodyText2: const TextStyle(color: secondaryColor),
                      ),
            ),
      home: const MyProfilePage(),
    );
  }
}
