import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_app/features/adhyaya/data/model/get_all_chapter_model.dart';
import 'package:task_app/services/network/apipath.dart';
import 'package:task_app/services/network/base_client.dart';
import 'package:task_app/services/network/failure.dart';
import 'package:task_app/services/network/http_exception.dart';

final chapterRepoProvider = Provider((ref) {
  return ChapterRepository();
});

abstract class IChapterRepo {
  Future<Either<Failure, List<GetAllChapterModel>>> getAllChapters();
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
}
