import 'package:flutter/material.dart';

class DailyExcerciseModel {
  String? month;
  String? day;
  String? title;
  String? subTitle;
  Color? bgColor;

  DailyExcerciseModel(
      {@required this.month,
      @required this.day,
      @required this.title,
      @required this.subTitle,
      @required this.bgColor});
}
