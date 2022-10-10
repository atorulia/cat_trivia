import 'package:flutter/material.dart';

/// Colors used in the app
class ComponentColors {
  static const primaryColor = _CustomColors.sun;
  static const backgroundColor = _CustomColors.white;
  static const titleTextColor = _CustomColors.black;
}

/// Colors get from https://chir.ag/projects/name-that-color/#6195ED
class _CustomColors {
  static const Color black = Color(0xFF000000);
  static const Color bigStone = Color(0xFF14213D);
  static const Color sun = Color(0xFFFCA311);
  static const Color ebony = Color(0xFF0A111F);
  static const Color mercury = Color(0xFFE5E5E5);
  static const Color white = Color(0xFFFFFFFF);
}
