import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_app/config/theme/constant/image_path.dart';
import 'package:task_app/features/onboarding/widget/onboard_title_widget.dart';

class OnboardingPage2 extends ConsumerWidget {
  const OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Image.asset(
          ImagePath.onboard2,
          height: 268,
          width: 268,
          fit: BoxFit.fitHeight,
        )),
        const SizedBox(
          height: 36,
        ),
        const OnBoardTitleWidget(
            title: "Multi Language",
            description:
                "It build in two languages Hindi,\n English with best and easy\n translation")
      ],
    );
  }
}
