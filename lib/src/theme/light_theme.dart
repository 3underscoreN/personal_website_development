import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color.fromARGB(255, 77, 204, 142),
    onPrimary: Color.fromARGB(255, 7, 20, 14),
    secondary: Color.fromARGB(255, 255, 62, 183),
    onSecondary: Color.fromARGB(255, 255, 255, 255),
    surface: Color.fromARGB(255, 194, 255, 225),
    onSurface: Color.fromARGB(255, 7, 20, 14),
    error: Colors.red,
    onError: Colors.white,
    tertiary: Color.fromARGB(255, 69, 69, 69),
    onTertiary: Color.fromARGB(255, 194, 255, 225),
  ),
  useMaterial3: true,
);