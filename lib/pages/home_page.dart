import 'package:ProJectHub/components/bottom_navigation.dart';
import 'package:ProJectHub/components/theme_button.dart'; // Import the new ThemeButton widget
import 'package:ProJectHub/components/top_header.dart';
import 'package:ProJectHub/enums/theme_manager.dart'; // Import ThemeType and ThemeManager
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  final Function(ThemeType) onThemeChange; // Use ThemeType instead of String

  const HomePage({super.key, required this.title, required this.onThemeChange});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  ThemeType _selectedTheme = ThemeType.light; // Track selected theme using enum

  final List<Widget> _pages = [
    const Center(child: Text('Home Page', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Search Page', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Profile Page', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Settings Page', style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              // Top Container with fixed theme colors
              TopHeader(title: widget.title, height: 70.0),

              // Middle content area that changes based on theme
              Expanded(
                child: Container(
                  color:
                      Theme.of(context).colorScheme.surface, // Color from theme
                  child: _pages[_currentIndex],
                ),
              ),
              // Use BottomNavigation widget
              BottomNavigation(
                currentIndex: _currentIndex,
                onIndexChanged: (int index) =>
                    setState(() => _currentIndex = index),
                height: 55.0,
              ),
            ],
          ),

          // Use PositionedThemeButton widget
          PositionedThemeButton(
            selectedTheme: _selectedTheme,
            onThemeChange: (ThemeType theme) {
              setState(() {
                _selectedTheme = theme;
                widget.onThemeChange(theme); // Pass selected theme to parent
              });
            },
            top: 60.0,
            right: 0,
          ),
        ],
      ),
    );
  }
}
