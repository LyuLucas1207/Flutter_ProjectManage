import 'package:ProJectHub/wraps/icon_button.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  final int currentIndex;
  final Function(int) onIndexChanged;
  final double? height;

  const BottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onIndexChanged,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: (height != null && height! < 55) ? 60 : (height ?? 60),
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
      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 0, right: 0),
      child: Flex(
        direction: Axis.horizontal, // 设置为水平布局
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomIconButton(
            icon: Icons.home,
            index: 0,
            currentIndex: currentIndex,
            onPressed: () => onIndexChanged(0),
            text: 'Home',
          ),
          CustomIconButton(
            icon: Icons.dashboard,
            index: 1,
            currentIndex: currentIndex,
            onPressed: () => onIndexChanged(1),
            text: 'Search',
          ),
          CustomIconButton(
            icon: Icons.person,
            index: 2,
            currentIndex: currentIndex,
            onPressed: () => onIndexChanged(2),
            text: 'Profile',
          ),
          CustomIconButton(
            icon: Icons.settings,
            index: 3,
            currentIndex: currentIndex,
            onPressed: () => onIndexChanged(3),
            text: 'Settings',
          ),
        ],
      ),
    );
  }
}
