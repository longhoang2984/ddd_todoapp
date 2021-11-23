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

  _TagItem call({required ItemString name}) {
    return _TagItem(
      name: name,
    );
  }
}

/// @nodoc
const $TagItem = _$TagItemTearOff();

/// @nodoc
mixin _$TagItem {
  ItemString get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TagItemCopyWith<TagItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagItemCopyWith<$Res> {
  factory $TagItemCopyWith(TagItem value, $Res Function(TagItem) then) =
      _$TagItemCopyWithImpl<$Res>;
  $Res call({ItemString name});
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
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ItemString,
    ));
  }
}

/// @nodoc
abstract class _$TagItemCopyWith<$Res> implements $TagItemCopyWith<$Res> {
  factory _$TagItemCopyWith(_TagItem value, $Res Function(_TagItem) then) =
      __$TagItemCopyWithImpl<$Res>;
  @override
  $Res call({ItemString name});
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
  }) {
    return _then(_TagItem(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ItemString,
    ));
  }
}

/// @nodoc

class _$_TagItem extends _TagItem {
  const _$_TagItem({required this.name}) : super._();

  @override
  final ItemString name;

  @override
  String toString() {
    return 'TagItem(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TagItem &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  _$TagItemCopyWith<_TagItem> get copyWith =>
      __$TagItemCopyWithImpl<_TagItem>(this, _$identity);
}

abstract class _TagItem extends TagItem {
  const factory _TagItem({required ItemString name}) = _$_TagItem;
  const _TagItem._() : super._();

  @override
  ItemString get name;
  @override
  @JsonKey(ignore: true)
  _$TagItemCopyWith<_TagItem> get copyWith =>
      throw _privateConstructorUsedError;
}
