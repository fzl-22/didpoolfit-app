import 'package:didpoolfit/global/themes/color_util.dart';
import 'package:didpoolfit/global/widgets/icons/gradient_icon.dart';
import 'package:didpoolfit/global/widgets/tiles/option_tile.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class OtherSection extends StatelessWidget {
  const OtherSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      margin: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: ColorTheme.whiteColor,
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.grey.shade200,
            spreadRadius: 10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "Other",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          const SizedBox(height: 4),
          OptionTile(
            onPressed: () {},
            leading: const GradientIcon(icon: IconlyLight.message),
            title: "Contact Us",
          ),
          OptionTile(
            onPressed: () {},
            leading: const GradientIcon(icon: IconlyLight.shield_done),
            title: "Privacy Policy",
          ),
          OptionTile(
            onPressed: () {},
            leading: const GradientIcon(icon: IconlyLight.setting),
            title: "Settings",
          ),
        ],
      ),
    );
  }
}
