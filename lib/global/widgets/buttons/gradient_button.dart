import 'package:didpoolfit/global/themes/color_util.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;

  const GradientButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: ColorTheme.logoLinear,
        borderRadius: BorderRadius.circular(99),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: null,
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 8,
          ),
          maximumSize: const Size.fromWidth(128),
          foregroundColor: ColorTheme.whiteColor,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(99),
          ),
          textStyle: Theme.of(context)
              .textTheme
              .labelLarge!
              .copyWith(fontWeight: FontWeight.w600),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        onPressed: onPressed,
        child: Text(label),
      ),
    );
  }
}
