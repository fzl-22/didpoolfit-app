import 'package:didpoolfit/global/utils/color_util.dart';
import 'package:flutter/material.dart';

class GradientSquare extends StatelessWidget {
  final String text;

  const GradientSquare({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        gradient: ColorUtil.purpleLinear,
      ),
      child: Center(
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
