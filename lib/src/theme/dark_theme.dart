import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: Color.fromARGB(255, 66, 171, 120),
    onPrimary: Color.fromARGB(255, 184, 255, 255),
    secondary: Color.fromARGB(255, 255, 62, 183),
    onSecondary: Color.fromARGB(255, 255, 255, 255),
    surface: Color.fromARGB(255, 40, 53, 46),
    onSurface: Color.fromARGB(255, 184, 255, 255),
    error: Colors.red,
    onError: Colors.white,
    tertiary: Color.fromARGB(255, 0, 0, 0),
    onTertiary: Color.fromARGB(255, 66, 171, 120),
  ),
  useMaterial3: true,
);