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
    return Column(
      children: [
        Icon(icon),
        const SizedBox(
          height: 4,
        ),
        CircleAvatar(
          backgroundColor: isActive ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.onPrimary,
          radius: 2,
        )
      ],
    );
  }
}
