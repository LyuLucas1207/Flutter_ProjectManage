import 'package:ProJectHub/enums/theme_manager.dart'; // Import the new ThemeManager class
import 'package:ProJectHub/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  ThemeData _currentTheme = ThemeManager.lightTheme; // Default to light theme

  // Function to change theme
  void switchTheme(String themeName) {
    setState(() {
      _currentTheme =
          ThemeManager.getTheme(themeName); // Get theme from ThemeManager
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ProJectHub',
      theme: _currentTheme, // Apply the selected theme
      home: HomePage(
        title: 'Flutter Demo Home Page',
        onThemeChange: switchTheme, // Pass the theme switching function
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
