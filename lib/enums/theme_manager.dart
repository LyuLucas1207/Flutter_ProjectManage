import 'package:flutter/material.dart';

class ThemeManager {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.light,
      primary: Colors.blue,
      secondary: Colors.blueAccent,
      surface: Colors.grey.shade100,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.black,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyLarge: TextStyle(color: Colors.black),
      labelLarge: TextStyle(color: Colors.grey),
    ),
    useMaterial3: true,
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.black,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      brightness: Brightness.dark,
      primary: Colors.deepPurple,
      secondary: Colors.deepPurpleAccent,
      surface: Colors.grey.shade900,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.white,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(color: Colors.white),
      labelLarge: TextStyle(color: Colors.grey),
    ),
    useMaterial3: true,
  );

  static final ThemeData marsTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.red,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.redAccent,
      brightness: Brightness.dark,
      primary: Colors.redAccent,
      secondary: Colors.orangeAccent,
      surface: Colors.red.shade900,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.white,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(color: Colors.white),
      labelLarge: TextStyle(color: Colors.grey),
    ),
    useMaterial3: true,
  );

  static final ThemeData oceanTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.teal,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.teal,
      brightness: Brightness.light,
      primary: Colors.teal,
      secondary: Colors.cyan,
      surface: Colors.teal.shade50,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Colors.black,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyLarge: TextStyle(color: Colors.black),
      labelLarge: TextStyle(color: Colors.grey),
    ),
    useMaterial3: true,
  );

  static ThemeData getTheme(String themeName) {
    switch (themeName) {
      case 'light':
        return lightTheme;
      case 'dark':
        return darkTheme;
      case 'mars':
        return marsTheme;
      case 'ocean':
        return oceanTheme;
      default:
        return lightTheme;
    }
  }
}
