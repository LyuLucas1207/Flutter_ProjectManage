import 'dart:convert';
import 'dart:io';

import 'package:ProJectHub/enums/theme_manager.dart';
import 'package:flutter/services.dart' show rootBundle; // 用于加载 assets 文件
import 'package:path_provider/path_provider.dart';

class AppConfig {
  Map<String, dynamic> _config = {}; // 初始化为空，稍后加载

  // 获取用户配置文件路径
  Future<String> _getUserConfigPath() async {
    final directory = await getApplicationDocumentsDirectory();
    return '${directory.path}/app_config.json'; // 用户配置文件路径
  }

  // 加载默认配置
  Future<void> _loadDefaultConfig() async {
    final defaultConfigString =
        await rootBundle.loadString('lib/config/default_config.json');
    _config = jsonDecode(defaultConfigString);
  }

  // 读取配置文件（优先加载用户配置，如果不存在则加载默认配置）
  Future<void> _loadConfigFile() async {
    final userConfigPath = await _getUserConfigPath();
    final userConfigFile = File(userConfigPath);

    if (await userConfigFile.exists()) {
      final content = await userConfigFile.readAsString();
      if (content.isNotEmpty) {
        _config = jsonDecode(content);
      } else {
        await _loadDefaultConfig(); // 如果用户配置文件为空，则加载默认配置
      }
    } else {
      await _loadDefaultConfig(); // 如果用户配置文件不存在，加载默认配置
    }
  }

  // 保存配置文件
  Future<void> _saveConfigFile() async {
    final userConfigPath = await _getUserConfigPath();
    final file = File(userConfigPath);
    await file.writeAsString(jsonEncode(_config));
  }

  // 加载主题
  Future<ThemeType> loadTheme() async {
    await _loadConfigFile();
    return ThemeType.values.firstWhere(
      (theme) => theme.toString() == _config['theme'],
      orElse: () => ThemeType.light,
    );
  }

  // 保存主题
  Future<void> saveTheme(ThemeType themeType) async {
    _config['theme'] = themeType.toString();
    await _saveConfigFile();
  }

  // 加载自定义 Header
  Future<String> loadCustomHeader() async {
    await _loadConfigFile();
    return _config['customHeader'] ?? "ProJectHub";
  }

  // 保存自定义 Header
  Future<void> saveCustomHeader(String header) async {
    _config['customHeader'] = header;
    await _saveConfigFile();
  }
}
