import 'package:flutter/material.dart';

Color daciDark = Color(0xFF0D3B66);
Color daciLight = Color(0xFF84BCDA);
Color daciBackground = Color(0xFFE7ECEF);

const MaterialColor dacidarkmaterial =
    MaterialColor(_dacidarkmaterialPrimaryValue, <int, Color>{
  50: Color(0xFFE2E7ED),
  100: Color(0xFFB6C4D1),
  200: Color(0xFF869DB3),
  300: Color(0xFF567694),
  400: Color(0xFF31587D),
  500: Color(_dacidarkmaterialPrimaryValue),
  600: Color(0xFF0B355E),
  700: Color(0xFF092D53),
  800: Color(0xFF072649),
  900: Color(0xFF031938),
});
const int _dacidarkmaterialPrimaryValue = 0xFF0D3B66;

const MaterialColor dacidarkmaterialAccent =
    MaterialColor(_dacidarkmaterialAccentValue, <int, Color>{
  100: Color(0xFF6E9DFF),
  200: Color(_dacidarkmaterialAccentValue),
  400: Color(0xFF0859FF),
  700: Color(0xFF004DEE),
});
const int _dacidarkmaterialAccentValue = 0xFF3B7BFF;
