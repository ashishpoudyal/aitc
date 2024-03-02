import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_app/config/theme/constant/image_path.dart';
import 'package:task_app/features/onboarding/widget/onboard_title_widget.dart';

class OnboardingPage4 extends ConsumerWidget {
  const OnboardingPage4({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Image.asset(
          ImagePath.onboard4,
          height: 268,
          width: 268,
          fit: BoxFit.fitHeight,
        )),
        const SizedBox(
          height: 36,
        ),
        const OnBoardTitleWidget(
            title: "Let’s Start", description: "Start app and enjoy it")
      ],
    );
  }
}
