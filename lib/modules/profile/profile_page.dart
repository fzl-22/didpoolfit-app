import 'package:didpoolfit/global/widgets/buttons/app_bar_icon_button.dart';
import 'package:didpoolfit/global/widgets/buttons/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: AppBarIconButton(
          icon: IconlyLight.arrow_left_2,
          onTap: () {},
        ),
        title: "Profile",
        trailing: AppBarIconButton(
          icon: Icons.more_horiz_rounded,
          onTap: () {},
        ),
      ),
      body: const Center(
        child: Text("Ini profile page"),
      ),
    );
  }
}
