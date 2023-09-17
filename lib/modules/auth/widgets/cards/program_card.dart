import 'package:didpoolfit/global/utils/color_util.dart';
import 'package:flutter/material.dart';

class ProgramCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const ProgramCard({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.6 * MediaQuery.of(context).size.height,
      width: 0.75 * MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(36),
      decoration: BoxDecoration(
        gradient: ColorUtil.purpleLinear,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(
              imagePath,
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                const SizedBox(height: 20),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox(
                  width: 64,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Colors.white,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
