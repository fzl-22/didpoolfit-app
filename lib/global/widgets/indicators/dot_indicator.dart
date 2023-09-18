import 'package:didpoolfit/global/themes/color_util.dart';
import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  final bool isActive;

  const DotIndicator({
    super.key,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: isActive ? 18 : 6,
      width: 6,
      decoration: BoxDecoration(
        gradient: ColorTheme.logoLinear,
        borderRadius: BorderRadius.circular(12),
      ),
      duration: const Duration(milliseconds: 300),
    );
  }
}