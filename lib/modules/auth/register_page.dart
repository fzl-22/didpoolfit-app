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
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>(); 
    final fullNameController = TextEditingController();
    final phoneNumberController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    bool isAgree = false;

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
                    key: formKey,
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
                          controller: fullNameController,
                          hintText: "Full Name",
                          iconPath: 'assets/icons/form/profile.png',
                        ),
                        const SizedBox(height: 12),
                        AuthTextFormField(
                          controller: phoneNumberController,
                          hintText: "Phone Number",
                          iconPath: 'assets/icons/form/phone.png',
                          keyboardType: TextInputType.number,
                        ),
                        const SizedBox(height: 12),
                        AuthTextFormField(
                          controller: emailController,
                          hintText: "Email",
                          iconPath: 'assets/icons/form/message.png',
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: 12),
                        AuthTextFormField(
                          controller: passwordController,
                          hintText: "Password",
                          iconPath: 'assets/icons/form/lock.png',
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          isPassword: true,
                        ),
                        const SizedBox(height: 12),
                        EULACheckbox(
                          onChanged: (value) {
                            isAgree = value!;
                          },
                        ),
                        const SizedBox(height: 36),
                        SubmitButton(
                          onPressed: () {
                            print("Full Name: ${fullNameController.text}");
                            print("Phone Number: ${phoneNumberController.text}");
                            print("Email: ${emailController.text}");
                            print("Password: ${passwordController.text}");
                            print("Agreement: ${isAgree}");
                          },
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
