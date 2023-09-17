import 'package:didpoolfit/global/data/program_data.dart';
import 'package:didpoolfit/global/models/program.dart';
import 'package:didpoolfit/global/widgets/buttons/submit_button.dart';
import 'package:didpoolfit/modules/auth/widgets/carousels/program_list_carousel.dart';
import 'package:flutter/material.dart';

class ChooseProgramPage extends StatelessWidget {
  const ChooseProgramPage({super.key});

  @override
  Widget build(BuildContext context) {
    int initialPage = 0;
    Program selectedProgram = programData[initialPage];

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
                itemData: programData,
                initialPage: initialPage,
                selectData: (program) {
                  selectedProgram = program;
                },
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: SubmitButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("/login");
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
