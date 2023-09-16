import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class SocialMediaAuthButton extends StatelessWidget {
  final String logo;
  final VoidCallback onTap;

  const SocialMediaAuthButton({
    super.key,
    required this.logo,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 64,
      width: 64,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: const Color(0xFFDDDADA),
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: onTap,
        child: Transform.scale(
          scale: 0.5,
          child: Logo(
            logo,
          ),
        ),
      ),
    );
  }
}
