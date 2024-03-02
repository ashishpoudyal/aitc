// To parse this JSON data, do
//
//     final getAllChapterModel = getAllChapterModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_all_chapter_model.freezed.dart';
part 'get_all_chapter_model.g.dart';

List<GetAllChapterModel> getAllChapterModelFromJson(String str) => List<GetAllChapterModel>.from(json.decode(str).map((x) => GetAllChapterModel.fromJson(x)));

String getAllChapterModelToJson(List<GetAllChapterModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class GetAllChapterModel with _$GetAllChapterModel {
    const factory GetAllChapterModel({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "slug")
        String? slug,
        @JsonKey(name: "name_transliterated")
        String? nameTransliterated,
        @JsonKey(name: "name_translated")
        String? nameTranslated,
        @JsonKey(name: "verses_count")
        int? versesCount,
        @JsonKey(name: "chapter_number")
        int? chapterNumber,
        @JsonKey(name: "name_meaning")
        String? nameMeaning,
        @JsonKey(name: "chapter_summary")
        String? chapterSummary,
        @JsonKey(name: "chapter_summary_hindi")
        String? chapterSummaryHindi,
    }) = _GetAllChapterModel;

    factory GetAllChapterModel.fromJson(Map<String, dynamic> json) => _$GetAllChapterModelFromJson(json);
}
