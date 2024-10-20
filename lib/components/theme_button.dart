import 'package:ProJectHub/enums/theme_manager.dart';
import 'package:flutter/material.dart';

// Regular button to change theme
class ThemeButton extends StatelessWidget {
  final ThemeType selectedTheme;
  final Function(ThemeType) onThemeChange;

  const ThemeButton({
    super.key,
    required this.selectedTheme,
    required this.onThemeChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      margin: const EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12), // 设置圆角
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Container(
        width: 100, // 设置宽度
        height: 40, // 设置高度
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: DropdownButton<ThemeType>(
          menuMaxHeight: 150,
          menuWidth: 125,
          isExpanded: true,
          value: selectedTheme,
          icon: const Icon(Icons.density_small_sharp, size: 12),
          onChanged: (ThemeType? newValue) {
            onThemeChange(newValue!); // 切换主题
          },
          items: ThemeType.values
              .map<DropdownMenuItem<ThemeType>>((ThemeType value) {
            return DropdownMenuItem<ThemeType>(
              value: value,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 1),
                child: Text(
                  '${value.name[0].toUpperCase()}${value.name.substring(1)} Theme',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                    fontSize: 12,
                  ),
                ),
              ),
            );
          }).toList(),
          dropdownColor: Theme.of(context).colorScheme.surface,
          underline: Container(),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}

class PositionedThemeButton extends StatelessWidget {
  final ThemeType selectedTheme;
  final Function(ThemeType) onThemeChange;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;

  const PositionedThemeButton({
    super.key,
    required this.selectedTheme,
    required this.onThemeChange,
    this.top,
    this.bottom,
    this.left,
    this.right,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: ThemeButton(
        selectedTheme: selectedTheme,
        onThemeChange: onThemeChange,
      ),
    );
  }
}
