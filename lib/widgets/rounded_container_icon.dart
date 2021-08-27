import 'package:flutter/material.dart';

class RoundedContanerIcon extends StatelessWidget {
  final Color? bgColor;
  final Color? iconColor;
  final IconData? icon;
  final double? width;
  final double? height;
  final double? iconSize;

  RoundedContanerIcon({
    @required this.bgColor,
    @required this.iconColor,
    @required this.icon,
    this.iconSize = 24,
    this.height = 45,
    this.width: 45,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: bgColor, shape: BoxShape.circle),
      child: Icon(icon, color: iconColor, size: iconSize),
    );
  }
}
