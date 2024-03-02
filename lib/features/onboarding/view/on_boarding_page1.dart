import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app/config/theme/constant/image_path.dart';
import 'package:task_app/features/onboarding/widget/onboard_title_widget.dart';

class OnboardingPage1 extends ConsumerWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Image.asset(
          ImagePath.onboard1,
          height: 268,
          width: 268,
          fit: BoxFit.fitHeight,
        )),
        const SizedBox(
          height: 36,
        ),
        const OnBoardTitleWidget(
            title: "Bhagavad Gita - Simplified",
            description: "Read thea Gita anytime,\n where ever you wish")
      ],
    );
  }
}
