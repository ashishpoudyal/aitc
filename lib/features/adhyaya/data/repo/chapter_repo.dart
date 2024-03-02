import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_app/features/adhyaya/data/model/get_all_chapter_model.dart';
import 'package:task_app/features/adhyaya/data/model/particular_verse_model.dart';
import 'package:task_app/features/adhyaya/data/model/verse_list_model.dart';
import 'package:task_app/features/sloklisting/data/model/particular_chapter_model.dart';
import 'package:task_app/services/network/apipath.dart';
import 'package:task_app/services/network/base_client.dart';
import 'package:task_app/services/network/failure.dart';
import 'package:task_app/services/network/http_exception.dart';

final chapterRepoProvider = Provider((ref) {
  return ChapterRepository();
});

abstract class IChapterRepo {
  Future<Either<Failure, List<GetAllChapterModel>>> getAllChapters();
  Future<Either<Failure, ParticularChapterModel>> getParticularChapter(id);
  Future<Either<Failure, List<VerseListModel>>> getVerseList(id);
  Future<Either<Failure, ParticularVerseModel>> getParticularVerse(
      id, verseNum);
}

class ChapterRepository implements IChapterRepo {
  final _client = ApiHelper.instance;

  @override
  Future<Either<Failure, List<GetAllChapterModel>>> getAllChapters() async {
    try {
      final response = await _client.get(
        ApiPath.getAllChapter,
      );
      return Right(getAllChapterModelFromJson(jsonEncode(response)));
    } on CustomHttpException catch (e) {
      return Left(
          Failure(message: e.message.toString(), title: e.title.toString()));
    }
  }

  @override
  Future<Either<Failure, ParticularChapterModel>> getParticularChapter(
      id) async {
    try {
      final response = await _client.get(
        ApiPath.getAllChapter + "/$id/",
      );
      return Right(particularChapterModelFromJson(jsonEncode(response)));
    } on CustomHttpException catch (e) {
      return Left(
          Failure(message: e.message.toString(), title: e.title.toString()));
    }
  }

  @override
  Future<Either<Failure, List<VerseListModel>>> getVerseList(id) async {
    try {
      final response = await _client.get(
        "${ApiPath.getAllChapter}/$id/verses/",
      );

      return Right(verseListModelFromJson(jsonEncode(response)));
    } on CustomHttpException catch (e) {
      return Left(
          Failure(message: e.message.toString(), title: e.title.toString()));
    }
  }

  @override
  Future<Either<Failure, ParticularVerseModel>> getParticularVerse(
      id, verseNum) async {
    try {
      final response = await _client.get(
        "${ApiPath.getAllChapter}/$id/verses/$verseNum/",
      );

      return Right(particularVerseModelFromJson(jsonEncode(response)));
    } on CustomHttpException catch (e) {
      return Left(
          Failure(message: e.message.toString(), title: e.title.toString()));
    }
  }
}
