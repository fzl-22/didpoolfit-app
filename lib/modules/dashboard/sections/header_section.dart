import 'package:didpoolfit/global/themes/color_util.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome back,",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: ColorTheme.gray1,
                    ),
              ),
              const SizedBox(height: 4),
              Text(
                "Ahmad Faisal",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              IconlyLight.notification,
            ),
          )
        ],
      ),
    );
  }
}
