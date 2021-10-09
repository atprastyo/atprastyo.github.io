import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFFFFC107);
const Color secondaryColor = Color(0xFF242430);
const Color darkColor = Color(0xFF191923);
const Color bodyTextColor = Color(0xFF8B8B8D);
const Color bgColor = Color(0xFF1E1E28);

const double defaultPadding = 20.0;
const Duration defaultDuration = Duration(seconds: 1); // we use it on our animation
const double maxWidth = 1440.0; // max width of our web

const LinearGradient storyGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: <Color>[Colors.transparent, Colors.black26],
);
