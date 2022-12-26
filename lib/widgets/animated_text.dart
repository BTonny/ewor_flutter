import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final bool isHovering;
  AnimatedText(this.text, {super.key, this.style, this.isHovering = false});

  final hoveredTransform = Matrix4.identity()..scale(1.1);
  final defaultTransform = Matrix4.identity();

  @override
  Widget build(BuildContext context) {
    final transform = isHovering ? hoveredTransform : defaultTransform;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      transform: transform,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
