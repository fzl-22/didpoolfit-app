import 'package:didpoolfit/global/utils/color_util.dart';
import 'package:flutter/material.dart';

class GradientIcon extends StatelessWidget {
  final IconData icon;

  const GradientIcon({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return ColorUtil.greenLinear.createShader(bounds);
      },
      child: Icon(
        icon,
        color: ColorUtil.whiteColor,
      ),
    );
  }
}
