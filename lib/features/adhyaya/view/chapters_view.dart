import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_app/config/theme/app_color.dart';
import 'package:task_app/features/adhyaya/data/model/get_all_chapter_model.dart';
import 'package:task_app/features/adhyaya/widgets/chapter_list_tile.dart';
import 'package:task_app/routes/app_routes.dart';

class ChaptersView extends ConsumerWidget {
  List<GetAllChapterModel> getAllChapterMmode;
  ChaptersView({super.key, required this.getAllChapterMmode});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Chapters",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w700, color: AppColor.secondaryTextColor),
        ),
        const SizedBox(
          height: 12,
        ),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Divider(
                height: 1,
                color: AppColor.secondaryTextColor.withOpacity(0.1),
              ),
            );
          },
          shrinkWrap: true,
          itemCount: getAllChapterMmode.length,
          itemBuilder: (context, index) {
            return ChapterListTile(
                onTap: () {
                  SlokListingRoute(
                          $extra: getAllChapterMmode[index]
                              .chapterNumber
                              .toString())
                      .go(context);
                },
                index: getAllChapterMmode[index].chapterNumber.toString(),
                title: getAllChapterMmode[index].name ?? "",
                versesNumber: getAllChapterMmode[index].versesCount.toString());
          },
        )
      ],
    );
  }
}
