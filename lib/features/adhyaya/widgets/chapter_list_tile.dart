// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:task_app/config/theme/app_color.dart';

class ChapterListTile extends StatelessWidget {
  final String index;
  final String title;
  final String versesNumber;
  final VoidCallback? onTap;
  const ChapterListTile(
      {Key? key,
      required this.index,
      required this.title,
      required this.versesNumber,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: AppColor.onSecondaryColor,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                    child: Text(
                      index,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColor.whiteColor),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: AppColor.secondaryTextColor),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.list,
                        color: AppColor.secondaryTextColor,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "$versesNumber verses",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColor.secondaryTextColor),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: AppColor.secondaryTextColor,
            size: 16,
          )
        ],
      ),
    );
  }
}
