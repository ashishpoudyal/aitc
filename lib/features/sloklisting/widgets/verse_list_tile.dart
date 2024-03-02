import 'package:flutter/material.dart';
import 'package:task_app/config/theme/app_color.dart';

class VerseListTile extends StatelessWidget {
  final String title;
  final String verseNum;
  final VoidCallback? onTap;
  const VerseListTile(
      {super.key, required this.title, required this.verseNum, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.book_outlined,
                    color: AppColor.greyTextColor,
                    size: 14,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    "Verse $verseNum",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontWeight: FontWeight.w700),
                  )
                ],
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 14,
            color: AppColor.greyTextColor,
          )
        ],
      ),
    );
  }
}
