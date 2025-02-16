import 'package:flutter/material.dart';
import 'package:aurora_background/star_field.dart';

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

const lightThemeAuroraColors = <Color> [
  Color.fromARGB(255, 159, 233, 252),
  Color.fromARGB(255, 92, 204, 252),
  Color.fromARGB(255, 68, 183, 252)
];

final StarFieldConfig lightThemeStarFieldConfig = StarFieldConfig(
  starCount: 4,
  maxStarSize: 0.1,
  starColor: Colors.white.withAlpha((255 * 0.8).round()),
  seed: 114514,
);

const lightThemeBackground = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color.fromARGB(255, 77, 204, 142),
      Color.fromARGB(255, 77, 204, 142),
      Color.fromARGB(255, 56, 112, 94),
      // Color.fromARGB(255, 125, 47, 113),
      // Color.fromARGB(255, 61, 10, 54),
    ],
  ),
);