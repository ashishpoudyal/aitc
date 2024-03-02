import 'package:flutter/material.dart';
import 'package:task_app/config/theme/app_color.dart';

class NextTextWidget extends StatelessWidget {
  final VoidCallback onTap;
  const NextTextWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Text(
          "Next->",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w500, color: AppColor.whiteColor),
        ));
  }
}
