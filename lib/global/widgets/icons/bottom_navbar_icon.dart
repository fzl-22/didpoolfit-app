import 'package:didpoolfit/global/utils/color_util.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarIcon extends StatelessWidget {
  final IconData icon;
  final bool isActive;

  const BottomNavigationBarIcon({
    super.key,
    required this.icon,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return ColorUtil.logoLinear.createShader(bounds);
      },
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(
            height: 4,
          ),
          CircleAvatar(
            backgroundColor: isActive ? Colors.white : Colors.transparent,
            radius: 2,
          )
        ],
      ),
    );
  }
}
