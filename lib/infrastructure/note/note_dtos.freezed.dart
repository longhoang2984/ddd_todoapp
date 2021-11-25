// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteDto _$NoteDtoFromJson(Map<String, dynamic> json) {
  return _NoteDto.fromJson(json);
}

/// @nodoc
class _$NoteDtoTearOff {
  const _$NoteDtoTearOff();

  _NoteDto call(
      {required String id,
      required String title,
      required List<String> tags,
      required List<NoteItemDto> notes,
      required String ownerId}) {
    return _NoteDto(
      id: id,
      title: title,
      tags: tags,
      notes: notes,
      ownerId: ownerId,
    );
  }

  NoteDto fromJson(Map<String, Object?> json) {
    return NoteDto.fromJson(json);
  }
}

/// @nodoc
const $NoteDto = _$NoteDtoTearOff();

/// @nodoc
mixin _$NoteDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  List<NoteItemDto> get notes => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteDtoCopyWith<NoteDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteDtoCopyWith<$Res> {
  factory $NoteDtoCopyWith(NoteDto value, $Res Function(NoteDto) then) =
      _$NoteDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      List<String> tags,
      List<NoteItemDto> notes,
      String ownerId});
}

/// @nodoc
class _$NoteDtoCopyWithImpl<$Res> implements $NoteDtoCopyWith<$Res> {
  _$NoteDtoCopyWithImpl(this._value, this._then);

  final NoteDto _value;
  // ignore: unused_field
  final $Res Function(NoteDto) _then;

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
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<NoteItemDto>,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NoteDtoCopyWith<$Res> implements $NoteDtoCopyWith<$Res> {
  factory _$NoteDtoCopyWith(_NoteDto value, $Res Function(_NoteDto) then) =
      __$NoteDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      List<String> tags,
      List<NoteItemDto> notes,
      String ownerId});
}

/// @nodoc
class __$NoteDtoCopyWithImpl<$Res> extends _$NoteDtoCopyWithImpl<$Res>
    implements _$NoteDtoCopyWith<$Res> {
  __$NoteDtoCopyWithImpl(_NoteDto _value, $Res Function(_NoteDto) _then)
      : super(_value, (v) => _then(v as _NoteDto));

  @override
  _NoteDto get _value => super._value as _NoteDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? tags = freezed,
    Object? notes = freezed,
    Object? ownerId = freezed,
  }) {
    return _then(_NoteDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<NoteItemDto>,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoteDto extends _NoteDto {
  const _$_NoteDto(
      {required this.id,
      required this.title,
      required this.tags,
      required this.notes,
      required this.ownerId})
      : super._();

  factory _$_NoteDto.fromJson(Map<String, dynamic> json) =>
      _$$_NoteDtoFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final List<String> tags;
  @override
  final List<NoteItemDto> notes;
  @override
  final String ownerId;

  @override
  String toString() {
    return 'NoteDto(id: $id, title: $title, tags: $tags, notes: $notes, ownerId: $ownerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoteDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality().equals(other.notes, notes) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(tags),
      const DeepCollectionEquality().hash(notes),
      ownerId);

  @JsonKey(ignore: true)
  @override
  _$NoteDtoCopyWith<_NoteDto> get copyWith =>
      __$NoteDtoCopyWithImpl<_NoteDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoteDtoToJson(this);
  }
}

abstract class _NoteDto extends NoteDto {
  const factory _NoteDto(
      {required String id,
      required String title,
      required List<String> tags,
      required List<NoteItemDto> notes,
      required String ownerId}) = _$_NoteDto;
  const _NoteDto._() : super._();

  factory _NoteDto.fromJson(Map<String, dynamic> json) = _$_NoteDto.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  List<String> get tags;
  @override
  List<NoteItemDto> get notes;
  @override
  String get ownerId;
  @override
  @JsonKey(ignore: true)
  _$NoteDtoCopyWith<_NoteDto> get copyWith =>
      throw _privateConstructorUsedError;
}

NoteItemDto _$NoteItemDtoFromJson(Map<String, dynamic> json) {
  return _NoteItemDto.fromJson(json);
}

/// @nodoc
class _$NoteItemDtoTearOff {
  const _$NoteItemDtoTearOff();

  _NoteItemDto call(
      {required String id,
      required String name,
      required bool done,
      required String ownerId,
      required String noteId,
      required int index,
      bool isInitial = false}) {
    return _NoteItemDto(
      id: id,
      name: name,
      done: done,
      ownerId: ownerId,
      noteId: noteId,
      index: index,
      isInitial: isInitial,
    );
  }

  NoteItemDto fromJson(Map<String, Object?> json) {
    return NoteItemDto.fromJson(json);
  }
}

/// @nodoc
const $NoteItemDto = _$NoteItemDtoTearOff();

/// @nodoc
mixin _$NoteItemDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  String get noteId => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  bool get isInitial => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteItemDtoCopyWith<NoteItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteItemDtoCopyWith<$Res> {
  factory $NoteItemDtoCopyWith(
          NoteItemDto value, $Res Function(NoteItemDto) then) =
      _$NoteItemDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      bool done,
      String ownerId,
      String noteId,
      int index,
      bool isInitial});
}

/// @nodoc
class _$NoteItemDtoCopyWithImpl<$Res> implements $NoteItemDtoCopyWith<$Res> {
  _$NoteItemDtoCopyWithImpl(this._value, this._then);

  final NoteItemDto _value;
  // ignore: unused_field
  final $Res Function(NoteItemDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? done = freezed,
    Object? ownerId = freezed,
    Object? noteId = freezed,
    Object? index = freezed,
    Object? isInitial = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      noteId: noteId == freezed
          ? _value.noteId
          : noteId // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isInitial: isInitial == freezed
          ? _value.isInitial
          : isInitial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$NoteItemDtoCopyWith<$Res>
    implements $NoteItemDtoCopyWith<$Res> {
  factory _$NoteItemDtoCopyWith(
          _NoteItemDto value, $Res Function(_NoteItemDto) then) =
      __$NoteItemDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      bool done,
      String ownerId,
      String noteId,
      int index,
      bool isInitial});
}

/// @nodoc
class __$NoteItemDtoCopyWithImpl<$Res> extends _$NoteItemDtoCopyWithImpl<$Res>
    implements _$NoteItemDtoCopyWith<$Res> {
  __$NoteItemDtoCopyWithImpl(
      _NoteItemDto _value, $Res Function(_NoteItemDto) _then)
      : super(_value, (v) => _then(v as _NoteItemDto));

  @override
  _NoteItemDto get _value => super._value as _NoteItemDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? done = freezed,
    Object? ownerId = freezed,
    Object? noteId = freezed,
    Object? index = freezed,
    Object? isInitial = freezed,
  }) {
    return _then(_NoteItemDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      noteId: noteId == freezed
          ? _value.noteId
          : noteId // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isInitial: isInitial == freezed
          ? _value.isInitial
          : isInitial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoteItemDto extends _NoteItemDto {
  const _$_NoteItemDto(
      {required this.id,
      required this.name,
      required this.done,
      required this.ownerId,
      required this.noteId,
      required this.index,
      this.isInitial = false})
      : super._();

  factory _$_NoteItemDto.fromJson(Map<String, dynamic> json) =>
      _$$_NoteItemDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final bool done;
  @override
  final String ownerId;
  @override
  final String noteId;
  @override
  final int index;
  @JsonKey(defaultValue: false)
  @override
  final bool isInitial;

  @override
  String toString() {
    return 'NoteItemDto(id: $id, name: $name, done: $done, ownerId: $ownerId, noteId: $noteId, index: $index, isInitial: $isInitial)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoteItemDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.noteId, noteId) || other.noteId == noteId) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.isInitial, isInitial) ||
                other.isInitial == isInitial));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, done, ownerId, noteId, index, isInitial);

  @JsonKey(ignore: true)
  @override
  _$NoteItemDtoCopyWith<_NoteItemDto> get copyWith =>
      __$NoteItemDtoCopyWithImpl<_NoteItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoteItemDtoToJson(this);
  }
}

abstract class _NoteItemDto extends NoteItemDto {
  const factory _NoteItemDto(
      {required String id,
      required String name,
      required bool done,
      required String ownerId,
      required String noteId,
      required int index,
      bool isInitial}) = _$_NoteItemDto;
  const _NoteItemDto._() : super._();

  factory _NoteItemDto.fromJson(Map<String, dynamic> json) =
      _$_NoteItemDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  bool get done;
  @override
  String get ownerId;
  @override
  String get noteId;
  @override
  int get index;
  @override
  bool get isInitial;
  @override
  @JsonKey(ignore: true)
  _$NoteItemDtoCopyWith<_NoteItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}
