import 'package:didpoolfit/global/models/user.dart';
import 'package:didpoolfit/global/themes/color_util.dart';
import 'package:didpoolfit/global/utils/user_data_util.dart';
import 'package:didpoolfit/global/widgets/buttons/gradient_button.dart';
import 'package:didpoolfit/modules/profile/widgets/cards/user_data_card.dart';
import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  final User user;

  const ProfileSection({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 27,
                backgroundImage: AssetImage(
                  'assets/images/profile/default-profile-picture.png',
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      UserDataUtil(user: user).userName,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Text(
                      UserDataUtil(user: user).preferredProgramTitle,
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(color: ColorTheme.gray1),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              GradientButton(
                onPressed: () {},
                label: "Edit",
              )
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: UserDataCard(
                  label: "Height",
                  value: UserDataUtil(user: user).bodyHeight,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                flex: 1,
                child: UserDataCard(
                  label: "Weight",
                  value: UserDataUtil(user: user).bodyWeight,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                flex: 1,
                child: UserDataCard(
                  label: "Age",
                  value: UserDataUtil(user: user).userAge,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
