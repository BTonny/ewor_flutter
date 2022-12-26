import 'package:flutter/material.dart';

class RightTrapezoidClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(
        size.width - size.height / 3, 0.0); // x,y coordinates for top right
    path.lineTo(
        size.width, size.height); // x,y coordinates for bottom right (diagonal)
    path.lineTo(0.0, size.height); // x,y coordinates for bottom left
    path.close(); // close the path to form a bounded shape
    return path;
  }

  @override
  bool shouldReclip(RightTrapezoidClipper oldClipper) => false;
}

class FlippedRightTrapezoidClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0); // x,y coordinates for top right
    path.lineTo(size.width, size.height); // x,y coordinates for bottom right
    path.lineTo(
        size.height / 3, size.height); // x,y coordinates for bottom left
    path.close(); // close the path to form a bounded shape  (diagonal)
    return path;
  }

  @override
  bool shouldReclip(FlippedRightTrapezoidClipper oldClipper) => false;
}

class ParallelogramClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width - size.height / 3, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.height / 3, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(ParallelogramClipper oldClipper) => false;
}

class StoryClipperOne extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.height / 3, size.height);
    path.lineTo(size.height / 3, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(StoryClipperOne oldClipper) => false;
}

class StoryClipperTwo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(
        size.width - size.height / 3, 0.0); // x,y coordinates for top right
    path.lineTo(
        size.width, size.height); // x,y coordinates for bottom right (diagonal)
    path.lineTo(0.0, size.height); // x,y coordinates for bottom left
    path.lineTo(
        size.width - size.height / 3, 0.0); // drawing line clipping back to top right
    path.close();
    return path;
  }

  @override
  bool shouldReclip(StoryClipperTwo oldClipper) => false;
}
