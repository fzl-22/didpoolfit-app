import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthNavigationButton extends StatelessWidget {
  final String normalText;
  final String buttonText;
  final VoidCallback onTap;

  const AuthNavigationButton({
    super.key,
    required this.normalText,
    required this.buttonText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: Theme.of(context).textTheme.bodySmall,
        children: [
          TextSpan(text: normalText),
          TextSpan(
            text: buttonText,
            style: const TextStyle(
              inherit: true,
              color: Color(0xFFC150F6),
            ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
