import 'package:didpoolfit/global/themes/color_util.dart';
import 'package:didpoolfit/global/widgets/buttons/gradient_button.dart';
import 'package:flutter/material.dart';

class TodayTargetSection extends StatelessWidget {
  const TodayTargetSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ColorTheme.purpleLinear.colors[0].withOpacity(0.2),
            ColorTheme.purpleLinear.colors[1].withOpacity(0.2),
          ],
          begin: ColorTheme.purpleLinear.begin,
          end: ColorTheme.purpleLinear.end,
        ),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Today Target",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: ColorTheme.blackColor, fontWeight: FontWeight.w500),
          ),
          GradientButton(
            onPressed: () {},
            label: "Check",
          ),
        ],
      ),
    );
  }
}
