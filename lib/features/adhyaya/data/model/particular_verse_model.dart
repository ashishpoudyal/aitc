// To parse this JSON data, do
//
//     final particularVerseModel = particularVerseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'particular_verse_model.freezed.dart';
part 'particular_verse_model.g.dart';

ParticularVerseModel particularVerseModelFromJson(String str) =>
    ParticularVerseModel.fromJson(json.decode(str));

String particularVerseModelToJson(ParticularVerseModel data) =>
    json.encode(data.toJson());

@freezed
class ParticularVerseModel with _$ParticularVerseModel {
  const factory ParticularVerseModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "verse_number") required int verseNumber,
    @JsonKey(name: "chapter_number") required int chapterNumber,
    @JsonKey(name: "text") required String text,
    @JsonKey(name: "translations") required List<Commentary> translations,
    @JsonKey(name: "commentaries") required List<Commentary> commentaries,
  }) = _ParticularVerseModel;

  factory ParticularVerseModel.fromJson(Map<String, dynamic> json) =>
      _$ParticularVerseModelFromJson(json);
}

@freezed
class Commentary with _$Commentary {
  const factory Commentary({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "author_name") required String authorName,
    @JsonKey(name: "language") required String language,
  }) = _Commentary;

  factory Commentary.fromJson(Map<String, dynamic> json) =>
      _$CommentaryFromJson(json);
}
