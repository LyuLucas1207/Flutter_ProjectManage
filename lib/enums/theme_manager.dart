import 'package:ProJectHub/enums/theme_definitions.dart'; // Import theme definitions
import 'package:flutter/material.dart';

enum ThemeType { light, dark, mars, ocean, rice, ancient }

class ThemeManager {
  static ThemeData getTheme(ThemeType themeType) {
    switch (themeType) {
      case ThemeType.light:
        return lightTheme;
      case ThemeType.dark:
        return darkTheme;
      case ThemeType.mars:
        return marsTheme;
      case ThemeType.ocean:
        return oceanTheme;
      case ThemeType.rice:
        return riceFieldTheme;
      case ThemeType.ancient:
        return ancientStyleTheme;
      default:
        return lightTheme;
    }
  }
}
