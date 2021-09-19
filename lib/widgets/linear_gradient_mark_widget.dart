import 'package:flutter/material.dart';

class LinearGradientMaskWidget extends StatelessWidget {
  const LinearGradientMaskWidget({
    Key? key,
    required this.child,
    required this.colors,
  }) : super(key: key);
  
  final Widget child;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
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
