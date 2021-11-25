// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteItemTearOff {
  const _$NoteItemTearOff();

  _NoteItem call(
      {required String id,
      required ItemString name,
      required bool done,
      required String ownerId,
      required String noteId,
      required int index,
      bool isInitial = false}) {
    return _NoteItem(
      id: id,
      name: name,
      done: done,
      ownerId: ownerId,
      noteId: noteId,
      index: index,
      isInitial: isInitial,
    );
  }
}

/// @nodoc
const $NoteItem = _$NoteItemTearOff();

/// @nodoc
mixin _$NoteItem {
  String get id => throw _privateConstructorUsedError;
  ItemString get name => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  String get noteId => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  bool get isInitial => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteItemCopyWith<NoteItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteItemCopyWith<$Res> {
  factory $NoteItemCopyWith(NoteItem value, $Res Function(NoteItem) then) =
      _$NoteItemCopyWithImpl<$Res>;
  $Res call(
      {String id,
      ItemString name,
      bool done,
      String ownerId,
      String noteId,
      int index,
      bool isInitial});
}

/// @nodoc
class _$NoteItemCopyWithImpl<$Res> implements $NoteItemCopyWith<$Res> {
  _$NoteItemCopyWithImpl(this._value, this._then);

  final NoteItem _value;
  // ignore: unused_field
  final $Res Function(NoteItem) _then;

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
              as ItemString,
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
abstract class _$NoteItemCopyWith<$Res> implements $NoteItemCopyWith<$Res> {
  factory _$NoteItemCopyWith(_NoteItem value, $Res Function(_NoteItem) then) =
      __$NoteItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      ItemString name,
      bool done,
      String ownerId,
      String noteId,
      int index,
      bool isInitial});
}

/// @nodoc
class __$NoteItemCopyWithImpl<$Res> extends _$NoteItemCopyWithImpl<$Res>
    implements _$NoteItemCopyWith<$Res> {
  __$NoteItemCopyWithImpl(_NoteItem _value, $Res Function(_NoteItem) _then)
      : super(_value, (v) => _then(v as _NoteItem));

  @override
  _NoteItem get _value => super._value as _NoteItem;

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
    return _then(_NoteItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ItemString,
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

class _$_NoteItem extends _NoteItem {
  const _$_NoteItem(
      {required this.id,
      required this.name,
      required this.done,
      required this.ownerId,
      required this.noteId,
      required this.index,
      this.isInitial = false})
      : super._();

  @override
  final String id;
  @override
  final ItemString name;
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
    return 'NoteItem(id: $id, name: $name, done: $done, ownerId: $ownerId, noteId: $noteId, index: $index, isInitial: $isInitial)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoteItem &&
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
  _$NoteItemCopyWith<_NoteItem> get copyWith =>
      __$NoteItemCopyWithImpl<_NoteItem>(this, _$identity);
}

abstract class _NoteItem extends NoteItem {
  const factory _NoteItem(
      {required String id,
      required ItemString name,
      required bool done,
      required String ownerId,
      required String noteId,
      required int index,
      bool isInitial}) = _$_NoteItem;
  const _NoteItem._() : super._();

  @override
  String get id;
  @override
  ItemString get name;
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
  _$NoteItemCopyWith<_NoteItem> get copyWith =>
      throw _privateConstructorUsedError;
}
