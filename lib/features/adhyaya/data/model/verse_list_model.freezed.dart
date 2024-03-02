// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verse_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerseListModel _$VerseListModelFromJson(Map<String, dynamic> json) {
  return _VerseListModel.fromJson(json);
}

/// @nodoc
mixin _$VerseListModel {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "verse_number")
  int get verseNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "chapter_number")
  int get chapterNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "text")
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: "translations")
  List<Commentary> get translations => throw _privateConstructorUsedError;
  @JsonKey(name: "commentaries")
  List<Commentary> get commentaries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerseListModelCopyWith<VerseListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerseListModelCopyWith<$Res> {
  factory $VerseListModelCopyWith(
          VerseListModel value, $Res Function(VerseListModel) then) =
      _$VerseListModelCopyWithImpl<$Res, VerseListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "verse_number") int verseNumber,
      @JsonKey(name: "chapter_number") int chapterNumber,
      @JsonKey(name: "text") String text,
      @JsonKey(name: "translations") List<Commentary> translations,
      @JsonKey(name: "commentaries") List<Commentary> commentaries});
}

/// @nodoc
class _$VerseListModelCopyWithImpl<$Res, $Val extends VerseListModel>
    implements $VerseListModelCopyWith<$Res> {
  _$VerseListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? verseNumber = null,
    Object? chapterNumber = null,
    Object? text = null,
    Object? translations = null,
    Object? commentaries = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      verseNumber: null == verseNumber
          ? _value.verseNumber
          : verseNumber // ignore: cast_nullable_to_non_nullable
              as int,
      chapterNumber: null == chapterNumber
          ? _value.chapterNumber
          : chapterNumber // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      translations: null == translations
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<Commentary>,
      commentaries: null == commentaries
          ? _value.commentaries
          : commentaries // ignore: cast_nullable_to_non_nullable
              as List<Commentary>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerseListModelImplCopyWith<$Res>
    implements $VerseListModelCopyWith<$Res> {
  factory _$$VerseListModelImplCopyWith(_$VerseListModelImpl value,
          $Res Function(_$VerseListModelImpl) then) =
      __$$VerseListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "verse_number") int verseNumber,
      @JsonKey(name: "chapter_number") int chapterNumber,
      @JsonKey(name: "text") String text,
      @JsonKey(name: "translations") List<Commentary> translations,
      @JsonKey(name: "commentaries") List<Commentary> commentaries});
}

/// @nodoc
class __$$VerseListModelImplCopyWithImpl<$Res>
    extends _$VerseListModelCopyWithImpl<$Res, _$VerseListModelImpl>
    implements _$$VerseListModelImplCopyWith<$Res> {
  __$$VerseListModelImplCopyWithImpl(
      _$VerseListModelImpl _value, $Res Function(_$VerseListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? verseNumber = null,
    Object? chapterNumber = null,
    Object? text = null,
    Object? translations = null,
    Object? commentaries = null,
  }) {
    return _then(_$VerseListModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      verseNumber: null == verseNumber
          ? _value.verseNumber
          : verseNumber // ignore: cast_nullable_to_non_nullable
              as int,
      chapterNumber: null == chapterNumber
          ? _value.chapterNumber
          : chapterNumber // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      translations: null == translations
          ? _value._translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<Commentary>,
      commentaries: null == commentaries
          ? _value._commentaries
          : commentaries // ignore: cast_nullable_to_non_nullable
              as List<Commentary>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerseListModelImpl implements _VerseListModel {
  const _$VerseListModelImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "verse_number") required this.verseNumber,
      @JsonKey(name: "chapter_number") required this.chapterNumber,
      @JsonKey(name: "text") required this.text,
      @JsonKey(name: "translations")
      required final List<Commentary> translations,
      @JsonKey(name: "commentaries")
      required final List<Commentary> commentaries})
      : _translations = translations,
        _commentaries = commentaries;

  factory _$VerseListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerseListModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "verse_number")
  final int verseNumber;
  @override
  @JsonKey(name: "chapter_number")
  final int chapterNumber;
  @override
  @JsonKey(name: "text")
  final String text;
  final List<Commentary> _translations;
  @override
  @JsonKey(name: "translations")
  List<Commentary> get translations {
    if (_translations is EqualUnmodifiableListView) return _translations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_translations);
  }

  final List<Commentary> _commentaries;
  @override
  @JsonKey(name: "commentaries")
  List<Commentary> get commentaries {
    if (_commentaries is EqualUnmodifiableListView) return _commentaries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commentaries);
  }

  @override
  String toString() {
    return 'VerseListModel(id: $id, verseNumber: $verseNumber, chapterNumber: $chapterNumber, text: $text, translations: $translations, commentaries: $commentaries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerseListModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.verseNumber, verseNumber) ||
                other.verseNumber == verseNumber) &&
            (identical(other.chapterNumber, chapterNumber) ||
                other.chapterNumber == chapterNumber) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._translations, _translations) &&
            const DeepCollectionEquality()
                .equals(other._commentaries, _commentaries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      verseNumber,
      chapterNumber,
      text,
      const DeepCollectionEquality().hash(_translations),
      const DeepCollectionEquality().hash(_commentaries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerseListModelImplCopyWith<_$VerseListModelImpl> get copyWith =>
      __$$VerseListModelImplCopyWithImpl<_$VerseListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerseListModelImplToJson(
      this,
    );
  }
}

abstract class _VerseListModel implements VerseListModel {
  const factory _VerseListModel(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "verse_number") required final int verseNumber,
      @JsonKey(name: "chapter_number") required final int chapterNumber,
      @JsonKey(name: "text") required final String text,
      @JsonKey(name: "translations")
      required final List<Commentary> translations,
      @JsonKey(name: "commentaries")
      required final List<Commentary> commentaries}) = _$VerseListModelImpl;

  factory _VerseListModel.fromJson(Map<String, dynamic> json) =
      _$VerseListModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "verse_number")
  int get verseNumber;
  @override
  @JsonKey(name: "chapter_number")
  int get chapterNumber;
  @override
  @JsonKey(name: "text")
  String get text;
  @override
  @JsonKey(name: "translations")
  List<Commentary> get translations;
  @override
  @JsonKey(name: "commentaries")
  List<Commentary> get commentaries;
  @override
  @JsonKey(ignore: true)
  _$$VerseListModelImplCopyWith<_$VerseListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Commentary _$CommentaryFromJson(Map<String, dynamic> json) {
  return _Commentary.fromJson(json);
}

/// @nodoc
mixin _$Commentary {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "author_name")
  String get authorName => throw _privateConstructorUsedError;
  @JsonKey(name: "language")
  String get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentaryCopyWith<Commentary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentaryCopyWith<$Res> {
  factory $CommentaryCopyWith(
          Commentary value, $Res Function(Commentary) then) =
      _$CommentaryCopyWithImpl<$Res, Commentary>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "author_name") String authorName,
      @JsonKey(name: "language") String language});
}

/// @nodoc
class _$CommentaryCopyWithImpl<$Res, $Val extends Commentary>
    implements $CommentaryCopyWith<$Res> {
  _$CommentaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? authorName = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentaryImplCopyWith<$Res>
    implements $CommentaryCopyWith<$Res> {
  factory _$$CommentaryImplCopyWith(
          _$CommentaryImpl value, $Res Function(_$CommentaryImpl) then) =
      __$$CommentaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "author_name") String authorName,
      @JsonKey(name: "language") String language});
}

/// @nodoc
class __$$CommentaryImplCopyWithImpl<$Res>
    extends _$CommentaryCopyWithImpl<$Res, _$CommentaryImpl>
    implements _$$CommentaryImplCopyWith<$Res> {
  __$$CommentaryImplCopyWithImpl(
      _$CommentaryImpl _value, $Res Function(_$CommentaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? authorName = null,
    Object? language = null,
  }) {
    return _then(_$CommentaryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentaryImpl implements _Commentary {
  const _$CommentaryImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "description") required this.description,
      @JsonKey(name: "author_name") required this.authorName,
      @JsonKey(name: "language") required this.language});

  factory _$CommentaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentaryImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "author_name")
  final String authorName;
  @override
  @JsonKey(name: "language")
  final String language;

  @override
  String toString() {
    return 'Commentary(id: $id, description: $description, authorName: $authorName, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, description, authorName, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentaryImplCopyWith<_$CommentaryImpl> get copyWith =>
      __$$CommentaryImplCopyWithImpl<_$CommentaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentaryImplToJson(
      this,
    );
  }
}

abstract class _Commentary implements Commentary {
  const factory _Commentary(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "description") required final String description,
          @JsonKey(name: "author_name") required final String authorName,
          @JsonKey(name: "language") required final String language}) =
      _$CommentaryImpl;

  factory _Commentary.fromJson(Map<String, dynamic> json) =
      _$CommentaryImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "author_name")
  String get authorName;
  @override
  @JsonKey(name: "language")
  String get language;
  @override
  @JsonKey(ignore: true)
  _$$CommentaryImplCopyWith<_$CommentaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
