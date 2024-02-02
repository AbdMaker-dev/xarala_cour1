import 'package:flutter/material.dart';
import 'package:xarala_cour1/src/utils/colors.dart';

class GradientCard extends StatelessWidget {
  final Widget? child;
  final double? width, height;
  final EdgeInsetsGeometry? padding, margin;
  final bool withGradien;
  final void Function()? onTap;
  const GradientCard({
    super.key,
    this.child,
    this.height,
    this.width,
    this.padding,
    this.withGradien = false,
    this.margin,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          color: !withGradien ? lightGreyColor.withOpacity(0.7) : null,
          gradient: withGradien
              ? LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    bleuColor.withOpacity(0.25),
                    bleuColor.withOpacity(0.95),
                  ],
                )
              : null,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
  }
}
