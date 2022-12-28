import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class EworImage extends StatelessWidget {
  final String image;
  final String? placeholder;
  final double? width;
  final double? height;
  const EworImage(
      {super.key,
      required this.image,
      this.placeholder,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    if ((image.contains("http"))) {
      return CachedNetworkImage(
        imageUrl: image,
        width: width,
        height: height,
      );
    } else {
      return Image.asset(
        image.contains("assets")
            ? image
            : placeholder ?? "assets/icons/ewor_logo.png",
            width: width,
            height: height,
      );
    }
  }
}
