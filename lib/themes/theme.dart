import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: Color(0xFFF3F2FA),
    inversePrimary: Colors.black,
    primary: Color(0xFF7033FF),
    secondary: Color(0xFFA47DFF),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.black,
    primary: const Color(0xFF181818),
    secondary: Colors.grey.shade900,
    inversePrimary: Colors.white,
  ),
);
