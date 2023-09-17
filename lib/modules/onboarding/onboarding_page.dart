import 'package:didpoolfit/global/providers/onboarding_content_provider.dart';
import 'package:didpoolfit/global/utils/color_util.dart';
import 'package:didpoolfit/global/widgets/indicators/dot_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class OnboardingPage extends ConsumerStatefulWidget {
  const OnboardingPage({super.key});

  @override
  ConsumerState<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends ConsumerState<OnboardingPage> {
  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final onboardingContentData = ref.watch(onboardingContentProvider);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: onboardingContentData.length,
              onPageChanged: (index) {
                setState(() {
                  _pageIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return onboardingContentData[index];
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
                ...List.generate(
                    onboardingContentData.length,
                    (index) => Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: DotIndicator(
                            isActive: index == _pageIndex,
                          ),
                        )),
                const Spacer(),
                Material(
                  child: Ink(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      gradient: ColorUtil.logoLinear,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(25),
                      onTap: () {
                        if (_pageIndex == onboardingContentData.length - 1) {
                          context.go('/register');
                        }
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                      child: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



// class WaveClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     debugPrint(size.width.toString());
//     var path = Path();
//     path.lineTo(0, size.height - 80);
//     var firstStart = Offset(size.width / 4, size.height);
//     var firstEnd = Offset(size.width / 2, size.height);
//     path.quadraticBezierTo(
//       firstStart.dx,
//       firstStart.dy,
//       firstEnd.dx,
//       firstEnd.dy,
//     );

//     var secondStart = Offset(size.width - (size.width / 4), size.height);
//     var secondEnd = Offset(size.width, size.height - 160);

//     path.quadraticBezierTo(
//       secondStart.dx,
//       secondStart.dy,
//       secondEnd.dx,
//       secondEnd.dy,
//     );

//     path.lineTo(size.width, 0);

//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     throw UnimplementedError();
//   }
// }
