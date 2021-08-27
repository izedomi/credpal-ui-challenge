import 'package:credpal_ui_challenge/utils/colors.dart';
import 'package:flutter/material.dart';

class MetricTitle extends StatelessWidget {
  final String label;
  MetricTitle(this.label);

  @override
  Widget build(BuildContext context) {
    return Text(label,
        style: TextStyle(
          color: bunkerBlack,
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ));
  }
}
