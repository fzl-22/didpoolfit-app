import 'package:didpoolfit/global/models/program.dart';
import 'package:didpoolfit/global/models/user.dart';
import 'package:didpoolfit/global/providers/program_content_provider.dart';
import 'package:didpoolfit/global/providers/users_provider.dart';
import 'package:didpoolfit/global/utils/uuid_util.dart';
import 'package:didpoolfit/global/widgets/buttons/submit_button.dart';
import 'package:didpoolfit/modules/auth/widgets/carousels/program_list_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ChooseProgramPage extends ConsumerWidget {
  final Map<String, dynamic> userData;

  const ChooseProgramPage({
    super.key,
    required this.userData,
  });

  Future<void> _createUser(
      BuildContext context, WidgetRef ref, Program selectedProgram) async {
    final user = {
      ...userData,
      "preferredProgram": selectedProgram,
    };

    final newUser = User(
      userId: UuidUtil().getUid(),
      fullName: user['fullName'],
      phoneNumber: user['phoneNumber'],
      emailAddress: user['emailAddress'],
      password: user['password'],
      gender: user['gender'],
      dateOfBirth: user['dateOfBirth'],
      bodyWeight: double.parse(user['bodyWeight']),
      bodyHeight: double.parse(user['bodyHeight']),
      preferredProgram: selectedProgram,
    );

    ref.read(usersProvider.notifier).createUser(newUser);
    
    context.go('/login');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final programContentData = ref.watch(programContentProvider);

    int initialPage = 0;
    Program selectedProgram = programContentData[initialPage];

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 36),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Text(
                      "What is your goal?",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "It will help us to choose a best program for you",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: const Color(0xFF7B6F72),
                          ),
                    ),
                  ],
                ),
              ),
              ProgramListCarousel(
                itemData: programContentData,
                initialPage: initialPage,
                selectData: (program) {
                  selectedProgram = program;
                },
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: SubmitButton(
                  onPressed: () {
                    _createUser(context, ref, selectedProgram);
                  },
                  child: const Text("Confirm"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
