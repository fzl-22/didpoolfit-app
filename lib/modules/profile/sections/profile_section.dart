import 'package:didpoolfit/global/models/user.dart';
import 'package:didpoolfit/global/themes/color_util.dart';
import 'package:didpoolfit/modules/profile/widgets/user_data_card.dart';
import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  final User user;

  const ProfileSection({
    super.key,
    required this.user,
  });

  String get _userName {
    return user.fullName.split(' ').getRange(0, 2).toList().join(' ');
  }

  String get _preferredProgramTitle {
    return user.preferredProgram.title;
  }

  String get _bodyHeight {
    return "${user.bodyHeight.toInt().toString()}cm";
  }

  String get _bodyWeight {
    return "${user.bodyWeight.toInt().toString()}kg";
  }

  String get _userAge {
    return "${(DateTime.now().difference(user.dateOfBirth).inDays ~/ 365).toString()}yo";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const CircleAvatar(
              radius: 27,
              backgroundImage: AssetImage(
                'assets/images/profile/default-profile-picture.png',
              ),
            ),
            title: Text(
              _userName,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
            subtitle: Text(
              _preferredProgramTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: ColorTheme.gray1),
            ),
            trailing: Ink(
              width: 84,
              height: 36,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(99),
                gradient: ColorTheme.logoLinear,
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(99),
                onTap: () {},
                child: Center(
                  child: Text(
                    "Edit",
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: ColorTheme.whiteColor,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: UserDataCard(
                  label: "Height",
                  value: _bodyHeight,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                flex: 1,
                child: UserDataCard(
                  label: "Weight",
                  value: _bodyWeight,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                flex: 1,
                child: UserDataCard(
                  label: "Age",
                  value: _userAge,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
