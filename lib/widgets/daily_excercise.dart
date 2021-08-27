import 'package:credpal_ui_challenge/utils/colors.dart';
import 'package:credpal_ui_challenge/widgets/text_subtitle.dart';
import 'package:flutter/material.dart';

import 'custom_divider.dart';

class DailyExcercise extends StatelessWidget {
  final String? month;
  final String? day;
  final String? title;
  final String? subTitle;
  final Color? bgColor;
  final bool? dividerIsTriple;

  DailyExcercise(
      {@required this.month,
      @required this.day,
      @required this.title,
      @required this.subTitle,
      @required this.bgColor,
      this.dividerIsTriple = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          height: 65,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: bgColor, borderRadius: BorderRadius.circular(9)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(month ?? '',
                  style: TextStyle(
                    color: mercuryGrey,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  )),
              SizedBox(height: 2),
              Text(day ?? '',
                  style: TextStyle(
                    color: mercuryGrey,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ))
            ],
          ),
        ),
        SizedBox(width: 24),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CustomDivider(orange),
                SizedBox(width: 1),
                CustomDivider(purpleBlue),
                dividerIsTriple! ? SizedBox(width: 1) : Container(),
                dividerIsTriple! ? CustomDivider(cyanBlue) : Container()
              ],
            ),
            SizedBox(height: 10),
            Text(
              title ?? '',
              style: TextStyle(
                color: bunkerBlack,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextSubTitle(subTitle ?? '')
          ],
        ),
      ],
    );
  }
}
