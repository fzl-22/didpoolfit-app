import 'package:flutter/material.dart';

class ColorUtil {
  static const purpleLinear = LinearGradient(
    colors: [
      Color(0xFFEEA4CE),
      Color(0xFFC150F6),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const LinearGradient logoLinear = LinearGradient(
    colors: [
      Color(0xFFCC8FED),
      Color(0xFF6B50F6),
    ],
    begin: Alignment.bottomRight,
    end: Alignment.topLeft,
  );

  static const LinearGradient greenLinear = LinearGradient(
    colors: [
      Color(0xFF00FF66),
      Color(0xFF00F0FF),
    ],
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
  );

  static const whiteColor = Color(0xFFFFFFFF);
  static const blackColor = Color(0xFF1D1617);

  static const gray1 = Color(0xFFB6B4C2);
}
