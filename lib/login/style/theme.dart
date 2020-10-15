import 'dart:ui';
import 'package:flutter/cupertino.dart';

class Theme {
  static const Color loginGradienStart = const Color(0xFFfbab66);
  static const Color loginFradienEnd = const Color(0xFFf7418c);

  static const LinearGradient primaryGradient = const LinearGradient(
      colors: const [loginGradienStart, loginFradienEnd],
      stops: const [0.0, 1.0],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter);
}
