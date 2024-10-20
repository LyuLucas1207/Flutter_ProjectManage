import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: const Color.fromRGBO(0, 0, 255, 1.0),
  // Blue
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromRGBO(0, 0, 255, 1.0),
    // Blue
    brightness: Brightness.light,
    primary: const Color.fromRGBO(0, 0, 255, 1.0),
    // Blue
    secondary: const Color.fromRGBO(0, 191, 255, 1.0),
    // BlueAccent
    surface: const Color.fromRGBO(245, 245, 245, 1.0),
    // Light grey
    onPrimary: const Color.fromRGBO(255, 255, 255, 1.0),
    // White
    onSecondary: const Color.fromRGBO(255, 255, 255, 1.0),
    // White
    onSurface: const Color.fromRGBO(0, 0, 0, 1.0), // Black
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(0, 0, 0, 1.0), // Black
    ),
    bodyLarge: TextStyle(color: Color.fromRGBO(0, 0, 0, 1.0)), // Black
    labelLarge: TextStyle(color: Color.fromRGBO(128, 128, 128, 1.0)), // Grey
  ),
  useMaterial3: true,
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: const Color.fromRGBO(0, 0, 0, 1.0),
  // Black
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromRGBO(75, 0, 130, 1.0),
    // DeepPurple
    brightness: Brightness.dark,
    primary: const Color.fromRGBO(75, 0, 130, 1.0),
    // DeepPurple
    secondary: const Color.fromRGBO(148, 0, 211, 1.0),
    // DeepPurpleAccent
    surface: const Color.fromRGBO(33, 33, 33, 1.0),
    // Dark grey
    onPrimary: const Color.fromRGBO(255, 255, 255, 1.0),
    // White
    onSecondary: const Color.fromRGBO(255, 255, 255, 1.0),
    // White
    onSurface: const Color.fromRGBO(255, 255, 255, 1.0), // White
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(255, 255, 255, 1.0), // White
    ),
    bodyLarge: TextStyle(color: Color.fromRGBO(255, 255, 255, 1.0)), // White
    labelLarge: TextStyle(color: Color.fromRGBO(128, 128, 128, 1.0)), // Grey
  ),
  useMaterial3: true,
);

final ThemeData marsTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: const Color.fromRGBO(255, 0, 0, 1.0),
  // Red
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromRGBO(255, 69, 0, 1.0),
    // RedAccent
    brightness: Brightness.dark,
    primary: const Color.fromRGBO(255, 69, 0, 1.0),
    // RedAccent
    secondary: const Color.fromRGBO(255, 165, 0, 1.0),
    // OrangeAccent
    surface: const Color.fromRGBO(139, 0, 0, 1.0),
    // DarkRed
    onPrimary: const Color.fromRGBO(255, 255, 255, 1.0),
    // White
    onSecondary: const Color.fromRGBO(255, 255, 255, 1.0),
    // White
    onSurface: const Color.fromRGBO(255, 255, 255, 1.0), // White
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(255, 255, 255, 1.0), // White
    ),
    bodyLarge: TextStyle(color: Color.fromRGBO(255, 255, 255, 1.0)), // White
    labelLarge: TextStyle(color: Color.fromRGBO(128, 128, 128, 1.0)), // Grey
  ),
  useMaterial3: true,
);

final ThemeData oceanTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: const Color.fromRGBO(0, 128, 128, 1.0),
  // Teal
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromRGBO(0, 128, 128, 1.0),
    // Teal
    brightness: Brightness.light,
    primary: const Color.fromRGBO(0, 128, 128, 1.0),
    // Teal
    secondary: const Color.fromRGBO(0, 255, 255, 1.0),
    // Cyan
    surface: const Color.fromRGBO(240, 255, 255, 1.0),
    // Light cyan
    onPrimary: const Color.fromRGBO(255, 255, 255, 1.0),
    // White
    onSecondary: const Color.fromRGBO(0, 0, 0, 1.0),
    // Black
    onSurface: const Color.fromRGBO(0, 0, 0, 1.0), // Black
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(0, 0, 0, 1.0), // Black
    ),
    bodyLarge: TextStyle(color: Color.fromRGBO(0, 0, 0, 1.0)), // Black
    labelLarge: TextStyle(color: Color.fromRGBO(128, 128, 128, 1.0)), // Grey
  ),
  useMaterial3: true,
);

final ThemeData riceFieldTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: const Color.fromRGBO(255, 223, 0, 1.0),
  // 稻田金黄
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromRGBO(255, 223, 0, 1.0),
    // 金黄色调
    brightness: Brightness.light,
    primary: const Color.fromRGBO(255, 223, 0, 1.0),
    // 稻田金黄
    secondary: const Color.fromRGBO(34, 139, 34, 1.0),
    // 稻田绿（森林绿）
    surface: const Color.fromRGBO(255, 248, 220, 1.0),
    // 淡米色
    onPrimary: const Color.fromRGBO(255, 255, 255, 1.0),
    // 白色
    onSecondary: const Color.fromRGBO(255, 255, 255, 1.0),
    // 白色
    onSurface: const Color.fromRGBO(0, 0, 0, 1.0), // 黑色
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(34, 139, 34, 1.0), // 森林绿
    ),
    bodyLarge: TextStyle(color: Color.fromRGBO(0, 0, 0, 1.0)), // 黑色
    labelLarge: TextStyle(color: Color.fromRGBO(128, 128, 128, 1.0)), // 灰色
  ),
  useMaterial3: true,
);

final ThemeData ancientStyleTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: const Color.fromRGBO(72, 61, 139, 1.0),
  // 紫色（古典色调）
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromRGBO(72, 61, 139, 1.0),
    // 紫色调
    brightness: Brightness.light,
    primary: const Color.fromRGBO(72, 61, 139, 1.0),
    // 古典紫色
    secondary: const Color.fromRGBO(176, 196, 222, 1.0),
    // 淡青色
    surface: const Color.fromRGBO(245, 245, 245, 1.0),
    // 浅灰
    onPrimary: const Color.fromRGBO(255, 255, 255, 1.0),
    // 白色
    onSecondary: const Color.fromRGBO(0, 0, 0, 1.0),
    // 黑色
    onSurface: const Color.fromRGBO(0, 0, 0, 1.0), // 黑色
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(72, 61, 139, 1.0), // 古典紫
    ),
    bodyLarge: TextStyle(color: Color.fromRGBO(0, 0, 0, 1.0)), // 黑色
    labelLarge: TextStyle(color: Color.fromRGBO(105, 105, 105, 1.0)), // 灰色
  ),
  useMaterial3: true,
);
