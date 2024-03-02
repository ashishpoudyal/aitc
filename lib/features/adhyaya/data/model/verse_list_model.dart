// To parse this JSON data, do
//
//     final verseListModel = verseListModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'verse_list_model.freezed.dart';
part 'verse_list_model.g.dart';

List<VerseListModel> verseListModelFromJson(String str) =>
    List<VerseListModel>.from(
        json.decode(str).map((x) => VerseListModel.fromJson(x)));

String verseListModelToJson(List<VerseListModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class VerseListModel with _$VerseListModel {
  const factory VerseListModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "verse_number") required int verseNumber,
    @JsonKey(name: "chapter_number") required int chapterNumber,
    @JsonKey(name: "text") required String text,
    @JsonKey(name: "translations") required List<Commentary> translations,
    @JsonKey(name: "commentaries") required List<Commentary> commentaries,
  }) = _VerseListModel;

  factory VerseListModel.fromJson(Map<String, dynamic> json) =>
      _$VerseListModelFromJson(json);
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
