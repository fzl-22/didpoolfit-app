import 'package:didpoolfit/global/themes/color_util.dart';
import 'package:flutter/material.dart';

class OnboardingContent extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const OnboardingContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 0.525 * MediaQuery.of(context).size.height,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 36,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 16),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: ColorTheme.gray1,
                      ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
