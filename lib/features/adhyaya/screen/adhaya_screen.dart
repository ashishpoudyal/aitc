import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_app/config/theme/app_color.dart';
import 'package:task_app/config/theme/constant/image_path.dart';
import 'package:task_app/features/adhyaya/provider/getall_chapter_provider.dart';
import 'package:task_app/features/adhyaya/view/chapters_view.dart';
import 'package:task_app/features/adhyaya/view/image_overlap_view.dart';
import 'package:task_app/features/adhyaya/view/last_read_view.dart';

class AdhayaScreen extends ConsumerStatefulWidget {
  const AdhayaScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AdhayaScreenState();
}

class _AdhayaScreenState extends ConsumerState<AdhayaScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(microseconds: 10), () {
      ref.read(getAllChapterProvider.notifier).getAllChapter();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(getAllChapterProvider);
    final getAllWatch = ref.watch(getAllChapterProvider.notifier).state;

    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: AppColor.blueColor,
          title: Text(
            "BHAGAVAD GITA",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w700, color: AppColor.whiteColor),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings_outlined,
                  color: AppColor.whiteColor,
                ))
          ],
        ),
        body: getAllWatch.when(
          data: (data) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  // Container(
                  //   child: Image.asset(ImagePath.adhaya),
                  // )
                  ImageOverlapView(),

                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      children: [
                        LastReadView(),
                        const SizedBox(
                          height: 24,
                        ),
                        ChaptersView(getAllChapterMmode: data),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
          error: (error, stackTrace) {
            return Text(error.toString());
          },
          loading: () {
            return const CircularProgressIndicator.adaptive();
          },
        ));
  }
}
