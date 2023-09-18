import 'package:didpoolfit/global/utils/color_util.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class OptionTile extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget leading;
  final String title;
  final Widget trailing;

  const OptionTile({
    super.key,
    required this.onPressed,
    required this.leading,
    required this.title,
    this.trailing = const Icon(
      IconlyLight.arrow_right_2,
      color: ColorUtil.gray1,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          shape: const ContinuousRectangleBorder(),
          padding: const EdgeInsets.symmetric(horizontal: 24),
          foregroundColor: Colors.grey),
      onPressed: onPressed,
      child: Row(
        children: [
          leading,
          const SizedBox(
            width: 14,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: ColorUtil.gray1,
                ),
          ),
          const Spacer(),
          trailing,
        ],
      ),
    );
  }
}
