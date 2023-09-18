import 'package:flutter/material.dart';

class GradientSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final Gradient activeGradient;
  final Color inactiveColor;

  const GradientSwitch({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.activeGradient,
    this.inactiveColor = Colors.grey,
  }) : super(key: key);

  @override
  State<GradientSwitch> createState() => _GradientSwitchState();
}

class _GradientSwitchState extends State<GradientSwitch> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onChanged(!widget.value);
      },
      child: AnimatedCrossFade(
        duration: const Duration(milliseconds: 500), // Adjust the animation duration
        crossFadeState: widget.value
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        firstChild: Container(
          width: 45.0, // Adjust as needed
          height: 25.0, // Adjust as needed
          decoration: BoxDecoration(
            gradient: widget.activeGradient,
            borderRadius: BorderRadius.circular(20.0), // Adjust as needed
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 4.0, // Adjust as needed
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 20.0, // Adjust as needed
                    height: 20.0, // Adjust as needed
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        secondChild: Container(
          width: 45.0, // Adjust as needed
          height: 25.0, // Adjust as needed
          decoration: BoxDecoration(
            color: widget.inactiveColor,
            borderRadius: BorderRadius.circular(20.0), // Adjust as needed
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 4.0, // Adjust as needed
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 20.0, // Adjust as needed
                    height: 20.0, // Adjust as needed
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
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
