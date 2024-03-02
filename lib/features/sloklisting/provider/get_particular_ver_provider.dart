import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_app/features/adhyaya/data/model/particular_verse_model.dart';
import 'package:task_app/features/adhyaya/data/repo/chapter_repo.dart';

final getparticularVersProvider = StateNotifierProvider.autoDispose((ref) {
  return GetParticularVerseStateNotifer(
      chapterRepo: ref.watch(chapterRepoProvider));
});

class GetParticularVerseStateNotifer
    extends StateNotifier<AsyncValue<ParticularVerseModel>> {
  GetParticularVerseStateNotifer({required this.chapterRepo})
      : super(const AsyncLoading());
  final IChapterRepo chapterRepo;
  getParticularVerse(id, verseNum) async {
    final response = await chapterRepo.getParticularVerse(id, verseNum);
    response.fold((l) {
      state = AsyncError(l, StackTrace.current);
    }, (r) {
      state = AsyncData(r);
    });
  }
}
