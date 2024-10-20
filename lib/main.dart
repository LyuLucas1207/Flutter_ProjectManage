import 'package:ProJectHub/config/app_config.dart'; // Import AppConfig
import 'package:ProJectHub/enums/theme_definitions.dart';
import 'package:ProJectHub/enums/theme_manager.dart';
import 'package:ProJectHub/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  ThemeData _currentTheme = lightTheme; // 默认主题
  String _currentHeader = 'Loading...'; // 默认加载中的标题
  final AppConfig _appConfig = AppConfig(); // 创建 AppConfig 实例

  @override
  void initState() {
    super.initState();
    // 启动时加载保存的主题和标题
    _appConfig
        .loadTheme()
        .then((loadedTheme) =>
            setState(() => _currentTheme = ThemeManager.getTheme(loadedTheme)))
        .catchError((error) {
      print("Error loading theme: $error");
    });

    _appConfig
        .loadCustomHeader()
        .then((loadedHeader) => setState(() => _currentHeader = loadedHeader))
        .catchError((error) {
      print("Error loading header: $error");
    });
  }

  // 切换主题并保存到配置文件
  void switchTheme(ThemeType themeType) {
    setState(() {
      _currentTheme = ThemeManager.getTheme(themeType);
      _appConfig.saveTheme(themeType); // 保存选择的主题
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _currentHeader, // 动态应用标题
      theme: _currentTheme, // 应用选中的主题
      home: HomePage(
        title: _currentHeader, // 动态传递标题
        onThemeChange: switchTheme, // 传递切换主题的方法
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
