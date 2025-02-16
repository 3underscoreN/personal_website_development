import 'package:flutter/material.dart';
import 'package:aurora_background/star_field.dart';

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


const darkThemeAuroraColors = <Color> [
  Color.fromARGB(255, 11, 16, 38),
  Color.fromARGB(255, 27, 39, 53),
  Color.fromARGB(255, 44, 62, 80)
];

final StarFieldConfig darkThemeStarFieldConfig = StarFieldConfig(
  starCount: 128,
  maxStarSize: 1.8,
  starColor: Colors.white.withAlpha((255 * 0.8).round()),
  seed: 114514,
);

// const darkThemeBackground = BoxDecoration(
//   gradient: LinearGradient(
//     begin: Alignment.topLeft,
//     end: Alignment.bottomRight,
//     colors: [
//       Color.fromARGB(255, 56, 112, 94),
//       Color.fromARGB(255, 56, 112, 94),
//       Color.fromARGB(255, 77, 204, 142),
//       // Color.fromARGB(255, 255, 203, 247),
//       // Color.fromARGB(255, 255, 236, 252)
//     ],
//   ),
// ); // unused and replaced by aurora_background