import 'dart:math' as math;

import 'package:flutter/material.dart';

class ValleyQuadraticCurve extends Curve {
  @override
  double transform(double t) {
    assert(t >= 0.0 && t <= 1.0);
    return Cubic(0.0, 0.01, 0.2, 1).transform(t);
    //return 4 * math.pow(t - 0.1, 2) * 1;
  }
}

class BackQuadraticCurve extends Curve {
  @override
  double transform(double t) {
    assert(t >= 0.0 && t <= 1.0);
    return Cubic(1, 1, 1, 1).transform(t);
    //return 4 * math.pow(t - 0.1, 2) * 1;
  }
}

class PeakQuadraticCurve extends Curve {
  @override
  double transform(double t) {
    assert(t >= 0.0 && t <= 1.0);
    return -15 * math.pow(t, 2) + 15 * t + 1;
  }
}
