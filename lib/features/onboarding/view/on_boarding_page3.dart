import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_app/config/theme/constant/image_path.dart';
import 'package:task_app/features/onboarding/widget/onboard_title_widget.dart';

class OnboardingPage3 extends ConsumerWidget {
  const OnboardingPage3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Image.asset(
          ImagePath.onboard3,
          height: 268,
          width: 268,
          fit: BoxFit.fitHeight,
        )),
        const SizedBox(
          height: 36,
        ),
        const OnBoardTitleWidget(
            title: "Audio Book",
            description:
                "You can listen the book in Hindi,\n English while doing your work")
      ],
    );
  }
}
