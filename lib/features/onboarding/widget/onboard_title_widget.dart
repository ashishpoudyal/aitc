import 'package:flutter/material.dart';
import 'package:task_app/config/theme/app_color.dart';

class OnBoardTitleWidget extends StatelessWidget {
  final String title;
  final String description;
  const OnBoardTitleWidget(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              fontWeight: FontWeight.w500, color: AppColor.whiteColor),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            description,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w400, color: AppColor.whiteColor),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
