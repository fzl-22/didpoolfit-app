import 'package:didpoolfit/global/providers/user_provider.dart';
import 'package:didpoolfit/global/widgets/buttons/app_bar_icon_button.dart';
import 'package:didpoolfit/global/widgets/buttons/custom_app_bar.dart';
import 'package:didpoolfit/modules/profile/sections/account_section.dart';
import 'package:didpoolfit/modules/profile/sections/profile_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconly/iconly.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ProfileSection(
              user: ref.read(userProvider),
            ),
            const SizedBox(height: 24),
            const AccountSection(),
          ],
        ),
      ),
    );
  }
}
