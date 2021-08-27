import 'dart:ui';

import 'package:flutter/widgets.dart';

class CustomRectTween extends RectTween {
  /// {@macro custom_rect_tween}
  CustomRectTween({
    @required Rect? begin,
    @required Rect? end,
  }) : super(begin: begin, end: end);

  @override
  Rect lerp(double t) {
    final elasticCurveValue = Curves.easeOut.transform(t);
    return Rect.fromLTRB(
      begin!.left * (1.0 - elasticCurveValue) + end!.left * elasticCurveValue,
      begin!.top * (1.0 - elasticCurveValue) + end!.top * elasticCurveValue,
      begin!.right * (1.0 - elasticCurveValue) + end!.right * elasticCurveValue,
      begin!.bottom * (1.0 - elasticCurveValue) +
          end!.bottom * elasticCurveValue,
    );
  }
}
