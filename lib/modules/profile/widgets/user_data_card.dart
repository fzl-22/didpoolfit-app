import 'package:didpoolfit/global/utils/color_util.dart';
import 'package:flutter/material.dart';

class UserDataCard extends StatelessWidget {
  final String label;
  final String value;

  const UserDataCard({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.grey.shade200,
            spreadRadius: 10,
          ),
        ],
      ),
      child: InkWell(
        splashColor: Colors.deepPurple.shade100,
        borderRadius: BorderRadius.circular(16),
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
          child: Column(
            children: [
              ShaderMask(
                shaderCallback: (bounds) {
                  return ColorUtil.purpleLinear.createShader(bounds);
                },
                child: Text(
                  value,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                ),
              ),
              Text(
                label,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: ColorUtil.gray1,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
