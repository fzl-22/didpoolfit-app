import 'package:carousel_slider/carousel_slider.dart';
import 'package:didpoolfit/global/widgets/indicators/dot_indicator.dart';
import 'package:didpoolfit/modules/auth/widgets/cards/program_card.dart';
import 'package:flutter/material.dart';

class ProgramListCarousel extends StatefulWidget {
  final List<dynamic> itemData;
  final int initialPage;
  final void Function(dynamic) selectData;

  const ProgramListCarousel({
    super.key,
    required this.initialPage,
    required this.itemData,
    required this.selectData,
  });

  @override
  State<ProgramListCarousel> createState() => _ProgramListCarouselState();
}

class _ProgramListCarouselState extends State<ProgramListCarousel> {
  int _programIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: widget.itemData
              .map(
                (program) => ProgramCard(
                  title: program.title,
                  description: program.description,
                  imagePath: program.imagePath,
                ),
              )
              .toList(),
          options: CarouselOptions(
            height: 0.6 * MediaQuery.of(context).size.height,
            initialPage: widget.initialPage,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.scale,
            onPageChanged: (index, reason) {
              setState(() {
                _programIndex = index;
                widget.selectData(widget.itemData[index]);
              });
            },
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              widget.itemData.length,
              (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: DotIndicator(isActive: _programIndex == index),
                );
              },
            )
          ],
        )
      ],
    );
  }
}
