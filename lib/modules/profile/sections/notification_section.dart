import 'package:didpoolfit/global/utils/color_util.dart';
import 'package:didpoolfit/global/widgets/icons/gradient_icon.dart';
import 'package:didpoolfit/global/widgets/tiles/option_tile.dart';
import 'package:didpoolfit/modules/profile/widgets/buttons/gradient_switch.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class NotificationSection extends StatefulWidget {
  const NotificationSection({super.key});

  @override
  State<NotificationSection> createState() => _NotificationSectionState();
}

class _NotificationSectionState extends State<NotificationSection> {
  bool _isActive = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 24,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: ColorUtil.whiteColor,
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
              "Notification",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          const SizedBox(height: 4),
          OptionTile(
            onPressed: () {},
            leading: const GradientIcon(icon: IconlyLight.notification),
            title: "Pop-up Notification",
            trailing: Transform.scale(
              scale: 0.7,
              child: GradientSwitch(
                value: _isActive,
                activeGradient: ColorUtil.greenLinear,
                inactiveColor: ColorUtil.gray1,
                onChanged: (newValue) {
                  setState(() {
                    _isActive = newValue;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
