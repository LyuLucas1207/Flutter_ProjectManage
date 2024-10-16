import 'package:ProJectHub/components/icon_button.dart';
import 'package:ProJectHub/components/theme_button.dart'; // Import the new ThemeButton widget
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  final Function(String) onThemeChange;

  const HomePage({super.key, required this.title, required this.onThemeChange});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  String _selectedTheme = 'light'; // Track selected theme

  final List<Widget> _pages = [
    const Center(child: Text('Home Page', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Search Page', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Profile Page', style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top Container with fixed theme colors
          Container(
            width: MediaQuery.of(context).size.width,
            height: 88,
            padding:
                const EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Text(
                widget.title,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ), // Dynamic font color for the title
              ),
            ),
          ),

          // Use the new ThemeButton widget
          ThemeButton(
            selectedTheme: _selectedTheme,
            onThemeChange: (String newTheme) {
              setState(() {
                _selectedTheme = newTheme;
                widget.onThemeChange(newTheme);
              });
            },
          ),

          // Middle content area that changes based on theme
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.surface, // Color from theme
              child: _pages[_currentIndex],
            ),
          ),

          // Bottom Navigation Bar with fixed theme colors
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, left: 0, right: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomIconButton(
                  icon: Icons.home,
                  index: 0,
                  currentIndex: _currentIndex,
                  onPressed: () => setState(() => _currentIndex = 0),
                ),
                CustomIconButton(
                  icon: Icons.dashboard,
                  index: 1,
                  currentIndex: _currentIndex,
                  onPressed: () => setState(() => _currentIndex = 1),
                ),
                CustomIconButton(
                  icon: Icons.person,
                  index: 2,
                  currentIndex: _currentIndex,
                  onPressed: () => setState(() => _currentIndex = 2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
