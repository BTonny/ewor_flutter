import 'package:ewor_flutter/widgets/animated_text.dart';
import 'package:ewor_flutter/widgets/custom_clippers.dart';
import 'package:flutter/material.dart';

class GradientColoredButton extends StatefulWidget {
  final BorderRadiusGeometry borderRadius;
  final EdgeInsets padding;
  final double? width;
  final double height;
  final Gradient gradient;
  final Gradient hoverGradient;
  final VoidCallback? onPressed;
  final String text;
  final TextStyle? style;
  final TextStyle? hoverStyle;

  const GradientColoredButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.style,
    this.hoverStyle,
    this.borderRadius = BorderRadius.zero,
    this.padding = const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
    this.width,
    this.height = 44.0,
    this.gradient =
        const LinearGradient(colors: [Color(0xffff6900), Color(0xffff0000)]),
    this.hoverGradient =
        const LinearGradient(colors: [Color(0xff000000), Color(0xff000000)]),
  }) : super(key: key);

  @override
  State<GradientColoredButton> createState() => _GradientColoredButtonState();
}

class _GradientColoredButtonState extends State<GradientColoredButton> {
  late Gradient gradientColor = widget.gradient;
  late TextStyle? textStyle = widget.style;
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    gradientColor = isHovering ? widget.hoverGradient : widget.gradient;
    textStyle = isHovering ? widget.hoverStyle ?? widget.style : widget.style;
    return ClipPath(
      clipper: ParallelogramClipper(),
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          gradient: gradientColor,
          borderRadius: widget.borderRadius,
        ),
        child: ElevatedButton(
          onPressed: widget.onPressed,
          onHover: onHovered,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(borderRadius: widget.borderRadius),
          ),
          child: Padding(
            padding: widget.padding,
            child: AnimatedText(
              widget.text,
              style: textStyle,
              isHovering: isHovering,
            ),
          ),
        ),
      ),
    );
  }

  void onHovered(bool value) => setState(() {
        isHovering = value;
      });
}
