import 'package:didpoolfit/global/providers/user_provider.dart';
import 'package:didpoolfit/global/widgets/buttons/app_bar_icon_button.dart';
import 'package:didpoolfit/global/widgets/buttons/custom_app_bar.dart';
import 'package:didpoolfit/modules/profile/sections/account_section.dart';
import 'package:didpoolfit/modules/profile/sections/notification_section.dart';
import 'package:didpoolfit/modules/profile/sections/other_section.dart';
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
      body: Container(
        margin: const EdgeInsets.only(
          left: 0,
          top: 24,
          right: 0,
          bottom: 0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ProfileSection(
              user: ref.read(userProvider),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView(
                children: const [
                  SizedBox(height: 12),
                  AccountSection(),
                  SizedBox(height: 24),
                  NotificationSection(),
                  SizedBox(height: 24),
                  OtherSection(),
                  SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
