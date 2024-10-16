import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final int index;
  final int currentIndex;
  final VoidCallback onPressed;

  const CustomIconButton({
    required this.icon,
    required this.index,
    required this.currentIndex,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        color: currentIndex == index ? Colors.white : Colors.white70,
      ),
      onPressed: onPressed,
    );
  }
}
