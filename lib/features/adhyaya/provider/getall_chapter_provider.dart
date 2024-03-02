import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_app/features/adhyaya/data/model/get_all_chapter_model.dart';
import 'package:task_app/features/adhyaya/data/repo/chapter_repo.dart';
import 'package:task_app/services/network/failure.dart';

// final getAllChapterProvider = ChangeNotifierProvider((ref) {
//   return GetAllChapterNotifier(chapterRepo: ref.watch(chapterRepoProvider));
// });

// class GetAllChapterNotifier extends ChangeNotifier {
//   final IChapterRepo chapterRepo;

//   GetAllChapterNotifier({required this.chapterRepo});
//   List<GetAllChapterModel> getAllChapterModel = [];
//   bool isLoading = false;
//   bool hasMoreData = true;
//   bool isLoadingMore = false;
//   Failure? failure;
//   int page = 1;

//   getAllChapter() async {
//     failure = null;
//     isLoading = true;
//     hasMoreData = true;
//     notifyListeners();
//     final resposne = await chapterRepo.getAllChapters();
//     resposne.fold((l) {
//       failure = l;
//     }, (r) {
//       getAllChapterModel = r;
//     });

//     isLoading = false;
//     notifyListeners();
//   }

// }
final getAllChapterProvider = StateNotifierProvider((ref) {
  return GetAllChapterNotifier(chapterRepo: ref.watch(chapterRepoProvider));
});

class GetAllChapterNotifier
    extends StateNotifier<AsyncValue<List<GetAllChapterModel>>> {
  GetAllChapterNotifier({required this.chapterRepo})
      : super(const AsyncLoading());
  final IChapterRepo chapterRepo;
  getAllChapter() async {
    final response = await chapterRepo.getAllChapters();
    response.fold((l) {
      state = AsyncError(l, StackTrace.current);
    }, (r) {
      state = AsyncData(r);
    });
  }
}
