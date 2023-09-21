import 'package:didpoolfit/global/themes/color_util.dart';
import 'package:didpoolfit/global/widgets/buttons/gradient_button.dart';
import 'package:flutter/material.dart';

class OverallStatusSection extends StatelessWidget {
  const OverallStatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 24,
      ),
      decoration: BoxDecoration(
        gradient: ColorTheme.purpleLinear,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "BMI (Body Mass Index)",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: ColorTheme.whiteColor,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  "You have normal weight",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: ColorTheme.whiteColor,
                      ),
                ),
                const SizedBox(height: 12),
                GradientButton(onPressed: () {}, label: "View More")
              ],
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}
