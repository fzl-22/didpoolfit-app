import 'package:didpoolfit/global/utils/validator_util.dart';
import 'package:didpoolfit/global/widgets/buttons/submit_button.dart';
import 'package:didpoolfit/modules/auth/widgets/buttons/auth_navigation_button.dart';
import 'package:didpoolfit/modules/auth/widgets/fields/eula_checkbox.dart';
import 'package:didpoolfit/modules/auth/widgets/fields/auth_text_form_field.dart';
import 'package:didpoolfit/modules/auth/widgets/buttons/social_media_auth_button.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isAgree = false;

  Future<void> _registerUser() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    if (_isAgree == false) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(
              "You must be agreed to the Privacy Policy and Term of Use before using the application",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          );
        },
      );
      return;
    }
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
                          "Create an account",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        const SizedBox(height: 24),
                        AuthTextFormField(
                          controller: _fullNameController,
                          hintText: "Full Name",
                          iconPath: 'assets/icons/form/profile.png',
                          validator: ValidatorUtil().fullNameValidator,
                        ),
                        const SizedBox(height: 12),
                        AuthTextFormField(
                          controller: _phoneNumberController,
                          hintText: "Phone Number",
                          iconPath: 'assets/icons/form/phone.png',
                          keyboardType: TextInputType.number,
                          validator: ValidatorUtil().phoneNumberValidator,
                        ),
                        const SizedBox(height: 12),
                        AuthTextFormField(
                          controller: _emailController,
                          hintText: "Email",
                          iconPath: 'assets/icons/form/message.png',
                          keyboardType: TextInputType.emailAddress,
                          validator: ValidatorUtil().emailValidator,
                        ),
                        const SizedBox(height: 12),
                        AuthTextFormField(
                          controller: _passwordController,
                          hintText: "Password",
                          iconPath: 'assets/icons/form/lock.png',
                          keyboardType: TextInputType.visiblePassword,
                          validator: ValidatorUtil().passwordValidator,
                          obscureText: true,
                          isPassword: true,
                        ),
                        const SizedBox(height: 12),
                        EULACheckbox(
                          onChanged: (value) {
                            _isAgree = value!;
                          },
                        ),
                        const SizedBox(height: 36),
                        SubmitButton(
                          onPressed: _registerUser,
                          child: const Text("Register"),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 16,
                  ),
                  child: Row(
                    children: [
                      const Flexible(
                        child: Divider(
                          endIndent: 8,
                          height: 2,
                          thickness: 1,
                          color: Color(0xFFDDDADA),
                        ),
                      ),
                      Text(
                        "Or",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const Flexible(
                        child: Divider(
                          indent: 8,
                          height: 2,
                          thickness: 1,
                          color: Color(0xFFDDDADA),
                        ),
                      ),
                    ],
                  ),
                ),
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
                        normalText: "Already have an account? ",
                        buttonText: "Login",
                        onTap: () {},
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
