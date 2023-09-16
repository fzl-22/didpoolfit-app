import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class AuthTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String iconPath;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool isPassword;

  const AuthTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.iconPath,
    this.keyboardType = TextInputType.name,
    this.obscureText = false,
    this.isPassword = false,
  });

  @override
  State<AuthTextFormField> createState() => _AuthTextFormFieldState();
}

class _AuthTextFormFieldState extends State<AuthTextFormField> {
  bool isVisible = false;

  bool get obscureTextValue{
    if(widget.obscureText == true && isVisible == true){
      return false;
    }else if(widget.obscureText == true && isVisible == false){
      return true;
    }else if(widget.obscureText == false && isVisible == true){
      return false;
    }else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: obscureTextValue,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? GestureDetector(
              onTap: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              child: Icon(
                  isVisible ? IconlyLight.show : IconlyLight.hide,
                  size: 20,
                ),
            )
            : null,
        prefixIcon: Transform.scale(
          scale: 0.5,
          child: ImageIcon(
            AssetImage(
              widget.iconPath,
            ),
          ),
        ),
        filled: true,
        fillColor: const Color(0xFFF7F8F8),
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
        // label: const Text("Full Name"),
        hintText: widget.hintText,
        hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: const Color(0xFFADA4A5),
            ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        
      ),
      style: Theme.of(context).textTheme.labelMedium,
    );
  }
}
