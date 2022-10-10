import 'package:cat_trivia/app/view/colors.dart';
import 'package:flutter/material.dart';

final _primarySwatch = _createMaterialColor(ComponentColors.primaryColor);

final lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: _primarySwatch,
  primaryColor: ComponentColors.primaryColor,
  backgroundColor: ComponentColors.backgroundColor,
  scaffoldBackgroundColor: ComponentColors.backgroundColor,
  fontFamily: 'Nunito',
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 40,
      height: 1.15,
    ),
    headline2: TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 36,
      height: 1.2,
    ),
    headline3: TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 30,
      height: 1.15,
    ),
    headline4: TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 22,
      height: 1.2,
    ),
    headline5: TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 20,
      height: 1.2,
    ),
    subtitle1: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 20,
      height: 1.2,
    ),
    subtitle2: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 18,
      height: 1.2,
    ),
    bodyText1: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 17,
      height: 1.4,
    ),
    bodyText2: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 15,
      height: 1.4,
    ),
  ),
);

MaterialColor _createMaterialColor(Color color) {
  final strengths = <double>[.05];
  final swatch = <int, Color>{};
  final r = color.red, g = color.green, b = color.blue;

  for (var i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (final strength in strengths) {
    final ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
