import 'package:didpoolfit/global/widgets/buttons/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginSuccessPage extends StatelessWidget {
  const LoginSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 12,
          ),
          child: SubmitButton(
            onPressed: () {
              context.go('/app');
            },
            child: const Text("Go To Home"),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 36,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 48),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/login/login-success.png',
                        height: 0.4 * MediaQuery.of(context).size.height,
                      ),
                      const SizedBox(height: 48),
                      Text(
                        "Hello, Stephanie",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        "You are all set now, let's reach your\ngoals together with us",
                        textAlign: TextAlign.center,
                        style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(
                                  color: const Color(0xFF7B6F72),
                                ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
