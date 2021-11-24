// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tag_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TagItemTearOff {
  const _$TagItemTearOff();

  _TagItem call({required ItemString name, required String id}) {
    return _TagItem(
      name: name,
      id: id,
    );
  }
}

/// @nodoc
const $TagItem = _$TagItemTearOff();

/// @nodoc
mixin _$TagItem {
  ItemString get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TagItemCopyWith<TagItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagItemCopyWith<$Res> {
  factory $TagItemCopyWith(TagItem value, $Res Function(TagItem) then) =
      _$TagItemCopyWithImpl<$Res>;
  $Res call({ItemString name, String id});
}

/// @nodoc
class _$TagItemCopyWithImpl<$Res> implements $TagItemCopyWith<$Res> {
  _$TagItemCopyWithImpl(this._value, this._then);

  final TagItem _value;
  // ignore: unused_field
  final $Res Function(TagItem) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ItemString,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TagItemCopyWith<$Res> implements $TagItemCopyWith<$Res> {
  factory _$TagItemCopyWith(_TagItem value, $Res Function(_TagItem) then) =
      __$TagItemCopyWithImpl<$Res>;
  @override
  $Res call({ItemString name, String id});
}

/// @nodoc
class __$TagItemCopyWithImpl<$Res> extends _$TagItemCopyWithImpl<$Res>
    implements _$TagItemCopyWith<$Res> {
  __$TagItemCopyWithImpl(_TagItem _value, $Res Function(_TagItem) _then)
      : super(_value, (v) => _then(v as _TagItem));

  @override
  _TagItem get _value => super._value as _TagItem;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_TagItem(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ItemString,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TagItem extends _TagItem {
  const _$_TagItem({required this.name, required this.id}) : super._();

  @override
  final ItemString name;
  @override
  final String id;

  @override
  String toString() {
    return 'TagItem(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TagItem &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  @JsonKey(ignore: true)
  @override
  _$TagItemCopyWith<_TagItem> get copyWith =>
      __$TagItemCopyWithImpl<_TagItem>(this, _$identity);
}

abstract class _TagItem extends TagItem {
  const factory _TagItem({required ItemString name, required String id}) =
      _$_TagItem;
  const _TagItem._() : super._();

  @override
  ItemString get name;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$TagItemCopyWith<_TagItem> get copyWith =>
      throw _privateConstructorUsedError;
}
