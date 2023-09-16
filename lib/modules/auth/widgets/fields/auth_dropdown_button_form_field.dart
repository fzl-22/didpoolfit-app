import 'package:flutter/material.dart';

class AuthDropdownButtonFormField extends StatelessWidget {
  final String hintText;
  final String iconPath;
  final void Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final List<DropdownMenuItem<String>>? items;

  const AuthDropdownButtonFormField({
    super.key,
    required this.hintText,
    required this.iconPath,
    required this.onChanged,
    required this.validator,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      style: Theme.of(context).textTheme.labelMedium,
      decoration: InputDecoration(
        prefixIcon: Transform.scale(
          scale: 0.5,
          child: ImageIcon(
            AssetImage(
              iconPath,
            ),
          ),
        ),
        filled: true,
        fillColor: const Color(0xFFF7F8F8),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            color: Color(0xFFF7F8F8),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            color: Color(0xFFF7F8F8),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            color: Color(0xFF6B50F6),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            color: Color(0xFFFF0000),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            color: Color(0xFFFF0000),
          ),
        ),
        errorStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: const Color(0xFFFF0000),
            ),
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: const Color(0xFFADA4A5),
            ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
      ),
      validator: validator,
      items: items,
      onChanged: onChanged,
    );
  }
}
