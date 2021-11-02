import 'package:flutter/material.dart';

ThemeData themeDark = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,
  ),
  scaffoldBackgroundColor: const Color(0XFF121212),
  backgroundColor: const Color(0xFF121212),
  primaryColor: Colors.black,
  hoverColor: const Color(0xFF1DB954),
  iconTheme: const IconThemeData().copyWith(color: Colors.white),
  fontFamily: 'Montserrat',
  textTheme:  TextTheme(
    headline2: const TextStyle(
      color: Colors.white,
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    headline4: TextStyle(
      fontSize: 12,
      color: Colors.grey.shade300,
      fontWeight: FontWeight.w500,
      letterSpacing: 2,
    ),
    bodyText1: TextStyle(
      color: Colors.grey.shade300,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      letterSpacing: 1,
    ),
    bodyText2: TextStyle(
      color: Colors.grey.shade300,
      letterSpacing: 1,
    ),
  ),
);
