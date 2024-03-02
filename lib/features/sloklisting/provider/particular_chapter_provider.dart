import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_app/features/adhyaya/data/repo/chapter_repo.dart';
import 'package:task_app/features/sloklisting/data/model/particular_chapter_model.dart';

final getparticularChapterProvider = StateNotifierProvider.autoDispose((ref) {
  return ParticularChapterStateNotifer(
      chapterRepo: ref.watch(chapterRepoProvider));
});

class ParticularChapterStateNotifer
    extends StateNotifier<AsyncValue<ParticularChapterModel>> {
  ParticularChapterStateNotifer({required this.chapterRepo})
      : super(const AsyncLoading());
  final IChapterRepo chapterRepo;
  getParticularChapter(id) async {
    final response = await chapterRepo.getParticularChapter(id);
    response.fold((l) {
      state = AsyncError(l, StackTrace.current);
    }, (r) {
      state = AsyncData(r);
    });
  }
}
