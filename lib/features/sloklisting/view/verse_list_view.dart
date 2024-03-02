import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_app/config/theme/app_color.dart';
import 'package:task_app/features/sloklisting/provider/get_verse_list_provider.dart';
import 'package:task_app/features/sloklisting/screen/slok_detail_screen.dart';
import 'package:task_app/features/sloklisting/widgets/verse_list_tile.dart';
import 'package:task_app/routes/app_routes.dart';

class VerseListView extends ConsumerWidget {
  const VerseListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(getVerseListProvider);
    final verseWatch = ref.watch(getVerseListProvider.notifier).state;
    return verseWatch.when(
      data: (data) {
        return ListView.separated(
          separatorBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Divider(
                height: 1,
                color: AppColor.greyTextColor.withOpacity(0.1),
              ),
            );
          },
          physics: NeverScrollableScrollPhysics(),
          itemCount: data.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return VerseListTile(
                onTap: () {
                  SlokListDetailRoute(
                          verseNum: data[index].verseNumber.toString(),
                          id: data[index].chapterNumber.toString())
                      .push(context);
                },
                title: data[index].text,
                verseNum: data[index].verseNumber.toString());
          },
        );
      },
      error: (error, stackTrace) {
        return Text(error.toString());
      },
      loading: () {
        return Center(child: CircularProgressIndicator.adaptive());
      },
    );
  }
}
