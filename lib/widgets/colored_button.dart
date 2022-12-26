import 'package:ewor_flutter/widgets/custom_clippers.dart';
import 'package:flutter/material.dart';

class ColoredButton extends StatelessWidget {
  final BorderRadiusGeometry borderRadius;
  final EdgeInsets padding;
  final double? width;
  final double height;
  final Color color;
  final VoidCallback? onPressed;
  final Widget child;

  const ColoredButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.borderRadius = BorderRadius.zero,
    this.padding = const EdgeInsets.symmetric(horizontal: 60, vertical: 8),
    this.width,
    this.height = 44.0,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ParallelogramClipper(),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
