import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_app/features/adhyaya/data/model/verse_list_model.dart';
import 'package:task_app/features/adhyaya/data/repo/chapter_repo.dart';

final getVerseListProvider = StateNotifierProvider.autoDispose((ref) {
  return GetVerseListOfParticularChapterStateNotifer(
      chapterRepo: ref.watch(chapterRepoProvider));
});

class GetVerseListOfParticularChapterStateNotifer
    extends StateNotifier<AsyncValue<List<VerseListModel>>> {
  GetVerseListOfParticularChapterStateNotifer({required this.chapterRepo})
      : super(const AsyncLoading());
  final IChapterRepo chapterRepo;
  getVerseList(id) async {
    final response = await chapterRepo.getVerseList(id);
    response.fold((l) {
      state = AsyncError(l, StackTrace.current);
    }, (r) {
      state = AsyncData(r);
    });
  }
}
