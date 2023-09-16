import 'package:flutter/material.dart';

class AppTitleText extends StatelessWidget {
  const AppTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "DIDPOOL",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.white,
                ),
          ),
          TextSpan(
            text: "Fit",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: const Color(0xFF1D1617),
                ),
          ),
        ],
      ),
    );
  }
}
