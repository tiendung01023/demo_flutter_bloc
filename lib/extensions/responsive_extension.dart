import 'dart:math';

import 'package:sizer/sizer.dart';

extension ResponsiveExtension on num {
  double responsive() {
    double sizeSp = 1.sp;
    sizeSp = min(sizeSp, 1.5);
    return this * sizeSp;
  }
}
