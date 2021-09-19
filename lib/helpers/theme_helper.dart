import 'package:flutter/material.dart';

class ThemeHelper {
  static ThemeData build(BuildContext context, {required bool isLightMode}) {
    return ThemeData(
      primaryColor:
          isLightMode ? const Color(0xFF000000) : const Color(0xFFFFFFFF),
      backgroundColor:
          isLightMode ? const Color(0xFFFFFFFF) : const Color(0xFF000000),
    );
  }
}
