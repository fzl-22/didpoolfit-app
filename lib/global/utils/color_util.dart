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

  static const blackColor = Color(0xFF1D1617);

  static const gray1 = Color(0xFFB6B4C2);
}
