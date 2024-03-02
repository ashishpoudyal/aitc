import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_app/config/theme/app_color.dart';

class LastReadView extends ConsumerWidget {
  const LastReadView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var text =
        """ O Bharata, all beings are subject to delusion at birth due to the delusion of the pairs of opposites arising form desire and aversion, OParantapa""";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Last read",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: AppColor.greyTextColor, fontWeight: FontWeight.w700),
            ),
            Text(
              "VERSE 7.27",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: AppColor.greyTextColor),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          "$text",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          height: 12,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            "CONTINUE READING",
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w500, color: AppColor.onSecondaryColor),
          ),
        )
      ],
    );
  }
}
