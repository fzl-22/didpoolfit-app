import 'package:flutter/material.dart';

class AuthDivider extends StatelessWidget {
  const AuthDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      child: Row(
        children: [
          const Flexible(
            child: Divider(
              endIndent: 8,
              height: 2,
              thickness: 1,
              color: Color(0xFFDDDADA),
            ),
          ),
          Text(
            "Or",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const Flexible(
            child: Divider(
              indent: 8,
              height: 2,
              thickness: 1,
              color: Color(0xFFDDDADA),
            ),
          ),
        ],
      ),
    );
  }
}
