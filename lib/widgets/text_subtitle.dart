import 'package:credpal_ui_challenge/utils/colors.dart';
import 'package:flutter/material.dart';

class TextSubTitle extends StatelessWidget {
  final String label;
  TextSubTitle(this.label);

  @override
  Widget build(BuildContext context) {
    return Text(label,
        style: TextStyle(
          color: subTitleGrey,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ));
  }
}
