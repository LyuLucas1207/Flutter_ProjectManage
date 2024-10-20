import 'package:flutter/material.dart';

class TopHeader extends StatelessWidget {
  final String title;
  final double height;

  const TopHeader({
    super.key,
    required this.title,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Top Container with fixed theme colors
        Container(
          width: MediaQuery.of(context).size.width,
          height: height,
          padding:
              const EdgeInsets.only(top: 16, bottom: 0, left: 16, right: 16),
          margin: const EdgeInsets.only(bottom: 0),
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
          //alignment: Alignment.center,

          child: Container(
            height: double.infinity,
            width: double.infinity,
            // constraints: BoxConstraints(
            //   maxHeight: double.infinity, // 设置高度为父元素的 100%
            //   maxWidth: double.infinity, // 设置宽度为父元素的 100%
            // ),
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.only(bottom: 8),
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
