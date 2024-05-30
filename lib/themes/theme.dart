import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: Color(0xFFC4DFDF),
    inversePrimary: Colors.black,
    primary: Color(0xFFD2E9E9),
    secondary: Color(0xFFE3F4F4),
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
