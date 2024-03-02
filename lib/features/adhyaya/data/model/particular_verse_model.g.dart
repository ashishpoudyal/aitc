// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'particular_verse_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParticularVerseModelImpl _$$ParticularVerseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ParticularVerseModelImpl(
      id: json['id'] as int,
      verseNumber: json['verse_number'] as int,
      chapterNumber: json['chapter_number'] as int,
      text: json['text'] as String,
      translations: (json['translations'] as List<dynamic>)
          .map((e) => Commentary.fromJson(e as Map<String, dynamic>))
          .toList(),
      commentaries: (json['commentaries'] as List<dynamic>)
          .map((e) => Commentary.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ParticularVerseModelImplToJson(
        _$ParticularVerseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'verse_number': instance.verseNumber,
      'chapter_number': instance.chapterNumber,
      'text': instance.text,
      'translations': instance.translations,
      'commentaries': instance.commentaries,
    };

_$CommentaryImpl _$$CommentaryImplFromJson(Map<String, dynamic> json) =>
    _$CommentaryImpl(
      id: json['id'] as int,
      description: json['description'] as String,
      authorName: json['author_name'] as String,
      language: json['language'] as String,
    );

Map<String, dynamic> _$$CommentaryImplToJson(_$CommentaryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'author_name': instance.authorName,
      'language': instance.language,
    };
