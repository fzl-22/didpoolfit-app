import 'package:didpoolfit/global/models/program.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final programContentProvider = Provider<List<Program>>((ref) {
  return [
    Program(
      title: "Improve Shape",
      description:
          "I have a low amount of body fat and need / want to build more muscle",
      imagePath: 'assets/images/choose-program/improve-shape.png',
    ),
    Program(
      title: "Lean & Tone",
      description:
          "I'm “skinny fat”. look thin but have no shape. I want to add learn muscle in the right way",
      imagePath: 'assets/images/choose-program/lean-tone.png',
    ),
    Program(
      title: "Lose a Fat",
      description:
          "I have over 20 lbs to lose. I want to drop all this fat and gain muscle mass",
      imagePath: 'assets/images/choose-program/lose-fat.png',
    ),
  ];
});
