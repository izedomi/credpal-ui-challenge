import 'package:credpal_ui_challenge/utils/colors.dart';
import 'package:credpal_ui_challenge/utils/styles.dart';
import 'package:credpal_ui_challenge/widgets/rounded_container_icon.dart';
import 'package:credpal_ui_challenge/widgets/text_subtitle.dart';
import 'package:flutter/material.dart';

class CurrentStats extends StatelessWidget {
  final Color? bgColor;
  final Color? iconColor;
  final IconData? icon;
  final String? title;
  final String? metric;
  final String? subTitle;

  CurrentStats(
      {@required this.bgColor,
      @required this.iconColor,
      @required this.icon,
      @required this.title,
      @required this.metric,
      @required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RoundedContanerIcon(bgColor: bgColor, iconColor: iconColor, icon: icon),
        SizedBox(height: 12),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              title ?? '',
              style: TextStyle(
                color: bunkerBlack,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 2),
            Text(metric ?? '', style: metricStyle)
          ],
        ),
        SizedBox(height: 10),
        TextSubTitle(subTitle ?? '')
      ],
    );
  }
}
