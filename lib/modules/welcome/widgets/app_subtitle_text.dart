import 'package:flutter/material.dart';

class AppSubtitleText extends StatelessWidget {
  const AppSubtitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Everybody can train",
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Colors.white,
          ),
    );
  }
}
