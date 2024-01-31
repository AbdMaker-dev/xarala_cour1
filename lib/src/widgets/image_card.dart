import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final Widget? child;
  final double? width, height, radius;
  final EdgeInsetsGeometry? padding, margin;
  final bool withGradien;
  final String image;
  const ImageCard({
    super.key,
    this.child,
    this.height,
    this.width,
    this.padding,
    this.withGradien = false,
    this.margin,
    required this.image,
    this.radius = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        // color: !withGradien ? lightGreyColor.withOpacity(0.7) : null,
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.circular(radius!),
      ),
      child: child,
    );
  }
}
