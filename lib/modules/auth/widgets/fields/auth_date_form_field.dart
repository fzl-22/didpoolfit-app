import 'package:didpoolfit/modules/auth/widgets/fields/auth_text_form_field.dart';
import 'package:flutter/material.dart';

class AuthDateFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String iconPath;
  final String? Function(String?)? validator;
  final VoidCallback onTap;

  const AuthDateFormField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.iconPath,
    required this.validator,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: onTap,
      child: AuthTextFormField(
        controller: controller,
        hintText: hintText,
        iconPath: iconPath,
        validator: validator,
        enabled: false,
        keyboardType: TextInputType.datetime,
        
      ),
    );
  }
}
