import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_app/app.dart';
import 'package:task_app/config/theme/app_color.dart';
import 'package:task_app/config/theme/constant/image_path.dart';
import 'package:task_app/features/sloklisting/provider/get_verse_list_provider.dart';
import 'package:task_app/features/sloklisting/provider/particular_chapter_provider.dart';
import 'package:task_app/features/sloklisting/view/chapter_show_more_view.dart';
import 'package:task_app/features/sloklisting/view/verse_list_view.dart';
import 'package:task_app/features/sloklisting/widgets/verse_list_tile.dart';
import 'package:task_app/services/network/failure.dart';
import 'package:task_app/widgets/custom_error_widget.dart';

class SlokListingScreen extends ConsumerStatefulWidget {
  final String chapterId;
  const SlokListingScreen({super.key, required this.chapterId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SlokListingScreenState();
}

class _SlokListingScreenState extends ConsumerState<SlokListingScreen> {
  @override
  void initState() {
    ref
        .read(getparticularChapterProvider.notifier)
        .getParticularChapter(widget.chapterId);
    ref.read(getVerseListProvider.notifier).getVerseList(widget.chapterId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(getparticularChapterProvider);
    final particularWatch =
        ref.watch(getparticularChapterProvider.notifier).state;
    ref.watch(getVerseListProvider);
    final verseWatch = ref.watch(getVerseListProvider.notifier).state;

    return Scaffold(
        appBar: AppBar(),
        body: particularWatch.when(
          data: (data) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(ImagePath.flower),
                        Text(
                          "CHAPTER    ${widget.chapterId}",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.blueTextColor),
                        ),
                        Image.asset(ImagePath.flower),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Center(
                      child: Text(
                        data.nameTranslated,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    ChapterShowMoreView(text: data.chapterSummary),
                    const SizedBox(
                      height: 36,
                    ),
                    const VerseListView()
                  ],
                ),
              ),
            );
          },
          error: (error, stackTrace) {
            return CustomErrorWidgets(
              failure: error as Failure,
              onTap: () {
                ref
                    .read(getparticularChapterProvider.notifier)
                    .getParticularChapter(widget.chapterId);
                ref
                    .read(getVerseListProvider.notifier)
                    .getVerseList(widget.chapterId);
              },
            );
          },
          loading: () {
            return const Center(child: CircularProgressIndicator.adaptive());
          },
        ));
  }
}
