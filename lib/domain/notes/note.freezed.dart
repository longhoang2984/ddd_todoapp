// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteTearOff {
  const _$NoteTearOff();

  _Note call(
      {required String id,
      required NoteTitle title,
      required Tags<TagItem> tags,
      required Notes<NoteItem> notes,
      required String ownerId}) {
    return _Note(
      id: id,
      title: title,
      tags: tags,
      notes: notes,
      ownerId: ownerId,
    );
  }
}

/// @nodoc
const $Note = _$NoteTearOff();

/// @nodoc
mixin _$Note {
  String get id => throw _privateConstructorUsedError;
  NoteTitle get title => throw _privateConstructorUsedError;
  Tags<TagItem> get tags => throw _privateConstructorUsedError;
  Notes<NoteItem> get notes => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteCopyWith<Note> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteCopyWith<$Res> {
  factory $NoteCopyWith(Note value, $Res Function(Note) then) =
      _$NoteCopyWithImpl<$Res>;
  $Res call(
      {String id,
      NoteTitle title,
      Tags<TagItem> tags,
      Notes<NoteItem> notes,
      String ownerId});
}

/// @nodoc
class _$NoteCopyWithImpl<$Res> implements $NoteCopyWith<$Res> {
  _$NoteCopyWithImpl(this._value, this._then);

  final Note _value;
  // ignore: unused_field
  final $Res Function(Note) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? tags = freezed,
    Object? notes = freezed,
    Object? ownerId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as NoteTitle,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as Tags<TagItem>,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as Notes<NoteItem>,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NoteCopyWith<$Res> implements $NoteCopyWith<$Res> {
  factory _$NoteCopyWith(_Note value, $Res Function(_Note) then) =
      __$NoteCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      NoteTitle title,
      Tags<TagItem> tags,
      Notes<NoteItem> notes,
      String ownerId});
}

/// @nodoc
class __$NoteCopyWithImpl<$Res> extends _$NoteCopyWithImpl<$Res>
    implements _$NoteCopyWith<$Res> {
  __$NoteCopyWithImpl(_Note _value, $Res Function(_Note) _then)
      : super(_value, (v) => _then(v as _Note));

  @override
  _Note get _value => super._value as _Note;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? tags = freezed,
    Object? notes = freezed,
    Object? ownerId = freezed,
  }) {
    return _then(_Note(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as NoteTitle,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as Tags<TagItem>,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as Notes<NoteItem>,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Note extends _Note {
  const _$_Note(
      {required this.id,
      required this.title,
      required this.tags,
      required this.notes,
      required this.ownerId})
      : super._();

  @override
  final String id;
  @override
  final NoteTitle title;
  @override
  final Tags<TagItem> tags;
  @override
  final Notes<NoteItem> notes;
  @override
  final String ownerId;

  @override
  String toString() {
    return 'Note(id: $id, title: $title, tags: $tags, notes: $notes, ownerId: $ownerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Note &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, tags, notes, ownerId);

  @JsonKey(ignore: true)
  @override
  _$NoteCopyWith<_Note> get copyWith =>
      __$NoteCopyWithImpl<_Note>(this, _$identity);
}

abstract class _Note extends Note {
  const factory _Note(
      {required String id,
      required NoteTitle title,
      required Tags<TagItem> tags,
      required Notes<NoteItem> notes,
      required String ownerId}) = _$_Note;
  const _Note._() : super._();

  @override
  String get id;
  @override
  NoteTitle get title;
  @override
  Tags<TagItem> get tags;
  @override
  Notes<NoteItem> get notes;
  @override
  String get ownerId;
  @override
  @JsonKey(ignore: true)
  _$NoteCopyWith<_Note> get copyWith => throw _privateConstructorUsedError;
}
