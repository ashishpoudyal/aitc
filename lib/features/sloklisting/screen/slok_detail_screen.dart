import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_app/config/theme/app_color.dart';
import 'package:task_app/features/sloklisting/provider/get_particular_ver_provider.dart';
import 'package:task_app/services/network/failure.dart';
import 'package:task_app/widgets/custom_error_widget.dart';

class SlokDetailScreen extends ConsumerStatefulWidget {
  final String verseNum;
  final String id;

  const SlokDetailScreen({super.key, required this.verseNum, required this.id});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SlokDetailScreenState();
}

class _SlokDetailScreenState extends ConsumerState<SlokDetailScreen> {
  @override
  void initState() {
    ref
        .read(getparticularVersProvider.notifier)
        .getParticularVerse(widget.id, widget.verseNum);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(getparticularVersProvider);
    final verseWatch = ref.watch(getparticularVersProvider.notifier).state;

    return Scaffold(
        appBar: AppBar(
          actions: [
            Icon(
              Icons.bookmark_outline,
            ),
            const SizedBox(
              width: 20,
            ),
            Text("Aa"),
            const SizedBox(
              width: 20,
            ),
            Icon(Icons.menu),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        body: verseWatch.when(
          data: (data) {
            return SingleChildScrollView(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "${data.chapterNumber}.${data.verseNumber}",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      data.text,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColor.onSecondaryColor),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    ...data.translations
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 24),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Text(
                                      "Translation ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                              fontWeight: FontWeight.w800,
                                              color: AppColor.greyTextColor),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    e.description,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            color: AppColor.greyTextColor),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    e.authorName,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            color: AppColor.onSecondaryColor,
                                            fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                        .toList()
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
                    .read(getparticularVersProvider.notifier)
                    .getParticularVerse(widget.id, widget.verseNum);
              },
            );
          },
          loading: () {
            return const Center(child: CircularProgressIndicator.adaptive());
          },
        ));
  }
}
