import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../modes/person.dart';

class StoryTile extends StatefulWidget {
  final CustomClipper<Path> clipper;
  final Color backgroundColor;
  final Person person;
  final OverlayPosition overlayPosition;
  final bool isMiddle;
  const StoryTile({
    Key? key,
    required this.clipper,
    required this.backgroundColor,
    required this.person,
    required this.overlayPosition,
    this.isMiddle = false,
  }) : super(key: key);

  @override
  State<StoryTile> createState() => _StoryTileState();
}

class _StoryTileState extends State<StoryTile> {
  bool isHovering = false;
  late final hoveredTransform = widget.isMiddle
      ? (Matrix4.identity()..translate(12, -8, 0))
      : (Matrix4.identity()..translate(-12, 8, 0));
  final defaultTransform = Matrix4.identity();

  @override
  Widget build(BuildContext context) {
    final opacity = isHovering ? 1.0 : 0.0;
    final transform = isHovering ? hoveredTransform : defaultTransform;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      transform: transform,
      child: ClipPath(
        clipper: widget.clipper,
        child: MouseRegion(
          onEnter: (_) => onHover(true),
          onExit: (_) => onHover(false),
          child: Stack(
            children: [
              Container(
                color: widget.backgroundColor,
                child: Image.asset(
                  widget.person.imageUrl,
                  height: 250,
                  width: 450,
                ),
              ),
              AnimatedOpacity(
                curve: Curves.easeInOut,
                duration: const Duration(milliseconds: 200),
                opacity: opacity,
                child: Container(
                  height: 250,
                  width: 450,
                  color: Colors.black.withOpacity(0.6),
                  child: Stack(
                    children: [
                      Positioned(
                        top: widget.overlayPosition.top,
                        left: widget.overlayPosition.left,
                        right: widget.overlayPosition.right,
                        bottom: widget.overlayPosition.bottom,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.person.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  ?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/bullet-arrow.svg",
                                  height: 15,
                                  width: 15,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  "Read ${widget.person.pronoun} story",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2
                                      ?.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void onHover(bool hover) => setState(() => isHovering = hover);
}

class OverlayPosition {
  final double? top;
  final double? left;
  final double? right;
  final double? bottom;

  const OverlayPosition({
    this.top,
    this.left,
    this.right,
    this.bottom,
  });
}
