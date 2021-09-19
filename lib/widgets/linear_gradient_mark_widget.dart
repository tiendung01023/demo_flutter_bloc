

import 'package:flutter/material.dart';

class LinearGradientMaskWidget extends StatelessWidget {
  LinearGradientMaskWidget({
    required this.child,
    required this.colors,
  });
  final Widget child;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return RadialGradient(
          center: Alignment.centerLeft,
          radius: 1,
          colors: colors,
          tileMode: TileMode.mirror,
        ).createShader(bounds);
      },
      child: child,
    );
  }
}
