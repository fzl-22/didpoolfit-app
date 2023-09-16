import 'package:flutter/material.dart';

class EULACheckbox extends StatefulWidget {
  final void Function(bool?) onChanged;

  const EULACheckbox({
    super.key,
    required this.onChanged,
  });

  @override
  State<EULACheckbox> createState() => _EULACheckboxState();
}

class _EULACheckboxState extends State<EULACheckbox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (value) {
            setState(
              () {
                isChecked = value!;
                widget.onChanged(value);
              },
            );
          },
        ),
        Expanded(
          child: RichText(
            overflow: TextOverflow.visible,
            text: TextSpan(
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: const Color(0xFFADA4A5),
                  ),
              children: const [
                TextSpan(
                  text: "By continuing, you accept our ",
                ),
                TextSpan(
                  text: "Privacy Policy",
                  style: TextStyle(
                    inherit: true,
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(
                  text: " and ",
                ),
                TextSpan(
                  text: "Term of Use",
                  style: TextStyle(
                    inherit: true,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
