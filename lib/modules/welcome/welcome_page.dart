import 'package:didpoolfit/global/utils/color_util.dart';
import 'package:didpoolfit/global/widgets/buttons/submit_button.dart';
import 'package:didpoolfit/modules/onboarding/onboarding_page.dart';
import 'package:didpoolfit/modules/welcome/widgets/app_subtitle_text.dart';
import 'package:didpoolfit/modules/welcome/widgets/app_title_text.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: purpleLinear,
      ),
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: SubmitButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const OnboardingPage(),
              ),
            );
          },
          child: const Text(
            "Get Started",
          ),
        ),
        backgroundColor: Colors.transparent,
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppTitleText(),
            SizedBox(height: 8),
            AppSubtitleText(),
          ],
        ),
      ),
    );
  }
}
