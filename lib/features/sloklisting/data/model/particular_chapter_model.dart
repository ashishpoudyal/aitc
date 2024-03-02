// To parse this JSON data, do
//
//     final particularChapterModel = particularChapterModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'particular_chapter_model.freezed.dart';
part 'particular_chapter_model.g.dart';

ParticularChapterModel particularChapterModelFromJson(String str) => ParticularChapterModel.fromJson(json.decode(str));

String particularChapterModelToJson(ParticularChapterModel data) => json.encode(data.toJson());

@freezed
class ParticularChapterModel with _$ParticularChapterModel {
    const factory ParticularChapterModel({
        @JsonKey(name: "id")
        required int id,
        @JsonKey(name: "name")
        required String name,
        @JsonKey(name: "slug")
        required String slug,
        @JsonKey(name: "name_transliterated")
        required String nameTransliterated,
        @JsonKey(name: "name_translated")
        required String nameTranslated,
        @JsonKey(name: "verses_count")
        required int versesCount,
        @JsonKey(name: "chapter_number")
        required int chapterNumber,
        @JsonKey(name: "name_meaning")
        required String nameMeaning,
        @JsonKey(name: "chapter_summary")
        required String chapterSummary,
        @JsonKey(name: "chapter_summary_hindi")
        required String chapterSummaryHindi,
    }) = _ParticularChapterModel;

    factory ParticularChapterModel.fromJson(Map<String, dynamic> json) => _$ParticularChapterModelFromJson(json);
}
