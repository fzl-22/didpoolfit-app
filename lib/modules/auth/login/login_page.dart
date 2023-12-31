import 'package:didpoolfit/global/utils/validator_util.dart';
import 'package:didpoolfit/global/widgets/buttons/submit_button.dart';
import 'package:didpoolfit/modules/auth/widgets/buttons/auth_navigation_button.dart';
import 'package:didpoolfit/modules/auth/widgets/etc/auth_divider.dart';
import 'package:didpoolfit/modules/auth/widgets/fields/auth_text_form_field.dart';
import 'package:didpoolfit/modules/auth/widgets/buttons/social_media_auth_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconly/iconly.dart';
import 'package:icons_plus/icons_plus.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> _loginUser() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    _formKey.currentState!.save();
    context.go('/login/login-success');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Text(
                          "Hey there,",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "Welcome Back",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        const SizedBox(height: 24),
                        AuthTextFormField(
                          controller: _emailController,
                          hintText: "Email",
                          iconPath: 'assets/icons/form/message.png',
                          keyboardType: TextInputType.emailAddress,
                          validator: ValidatorUtil().loginEmailValidator,
                        ),
                        const SizedBox(height: 12),
                        AuthTextFormField(
                          controller: _passwordController,
                          hintText: "Password",
                          iconPath: 'assets/icons/form/lock.png',
                          keyboardType: TextInputType.visiblePassword,
                          validator: ValidatorUtil().loginPasswordValidator,
                          obscureText: true,
                          isPassword: true,
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(0),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                minimumSize: Size.zero,
                                foregroundColor: const Color(0xFFADA4A5),
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                      decoration: TextDecoration.underline,
                                    ),
                              ),
                              onPressed: () {},
                              child: const Text("Forgot password?"),
                            ),
                          ],
                        ),
                        const SizedBox(height: 36),
                        SubmitButton(
                          onPressed: _loginUser,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(IconlyBold.login),
                              SizedBox(width: 12),
                              Text("Login"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const AuthDivider(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocialMediaAuthButton(
                            logo: Logos.google,
                            onTap: () {},
                          ),
                          const SizedBox(width: 12),
                          SocialMediaAuthButton(
                            logo: Logos.facebook_f,
                            onTap: () {},
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      AuthNavigationButton(
                        normalText: "Don't have an account yet? ",
                        buttonText: "Register",
                        onTap: () => context.go('/register'),
                      ),
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
