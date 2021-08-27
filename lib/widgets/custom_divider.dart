import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final Color color;
  final double height;
  final double width;
  final double radius;

  CustomDivider(this.color,
      {this.height = 3, this.width = 16, this.radius = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(radius)),
    );
  }
}
