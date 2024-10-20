import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {
  final IconData icon;
  final int index;
  final int currentIndex;
  final VoidCallback onPressed;
  final String text;

  const CustomIconButton({
    required this.icon,
    required this.index,
    required this.currentIndex,
    required this.onPressed,
    this.text = '',
    super.key,
  });

  @override
  CustomIconButtonState createState() => CustomIconButtonState();
}

class CustomIconButtonState extends State<CustomIconButton> {
  double _scale = 1.0;

  void _onTapDown(TapDownDetails details) => setState(() => _scale = 0.9);

  void _onTapUp(TapUpDetails details) {
    setState(() => _scale = 1.0);
    widget.onPressed();
  }

  void _onTapCancel() => setState(() => _scale = 1.0);

  Widget _buildText() {
    if (widget.text.isNotEmpty) {
      return Container(
        margin: const EdgeInsets.only(top: 0.0), // 添加图标与文字的间距
        child: Text(
          widget.text,
          style: TextStyle(
            color: widget.currentIndex == widget.index
                ? Colors.white
                : Colors.white70,
            fontSize: 10, // 你可以调整字体大小
          ),
        ),
      );
    } else {
      return const SizedBox.shrink(); // 返回一个空的占位组件
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: Transform.scale(
        scale: _scale, // 应用缩放效果
        child: Column(
          mainAxisSize: MainAxisSize.min, // 最小化Column占据的空间
          mainAxisAlignment: MainAxisAlignment.center, // 垂直居中
          children: [
            Icon(
              widget.icon,
              color: widget.currentIndex == widget.index
                  ? Colors.white
                  : Colors.white70,
            ),
            _buildText(),
          ],
        ),
      ),
    );
  }
}
