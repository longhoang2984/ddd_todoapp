// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  ServerError serverError({String? message = 'Something went wrong'}) {
    return ServerError(
      message: message,
    );
  }

  EmailExisted emailExisted() {
    return const EmailExisted();
  }

  InvalidEmailAndPassword invalidEmailAndPassword() {
    return const InvalidEmailAndPassword();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function() emailExisted,
    required TResult Function() invalidEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function()? emailExisted,
    TResult Function()? invalidEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function()? emailExisted,
    TResult Function()? invalidEmailAndPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailExisted value) emailExisted,
    required TResult Function(InvalidEmailAndPassword value)
        invalidEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailExisted value)? emailExisted,
    TResult Function(InvalidEmailAndPassword value)? invalidEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailExisted value)? emailExisted,
    TResult Function(InvalidEmailAndPassword value)? invalidEmailAndPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ServerError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError({this.message = 'Something went wrong'});

  @JsonKey(defaultValue: 'Something went wrong')
  @override
  final String? message;

  @override
  String toString() {
    return 'AuthFailure.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServerError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  $ServerErrorCopyWith<ServerError> get copyWith =>
      _$ServerErrorCopyWithImpl<ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function() emailExisted,
    required TResult Function() invalidEmailAndPassword,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function()? emailExisted,
    TResult Function()? invalidEmailAndPassword,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function()? emailExisted,
    TResult Function()? invalidEmailAndPassword,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailExisted value) emailExisted,
    required TResult Function(InvalidEmailAndPassword value)
        invalidEmailAndPassword,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailExisted value)? emailExisted,
    TResult Function(InvalidEmailAndPassword value)? invalidEmailAndPassword,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailExisted value)? emailExisted,
    TResult Function(InvalidEmailAndPassword value)? invalidEmailAndPassword,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError({String? message}) = _$ServerError;

  String? get message;
  @JsonKey(ignore: true)
  $ServerErrorCopyWith<ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailExistedCopyWith<$Res> {
  factory $EmailExistedCopyWith(
          EmailExisted value, $Res Function(EmailExisted) then) =
      _$EmailExistedCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailExistedCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailExistedCopyWith<$Res> {
  _$EmailExistedCopyWithImpl(
      EmailExisted _value, $Res Function(EmailExisted) _then)
      : super(_value, (v) => _then(v as EmailExisted));

  @override
  EmailExisted get _value => super._value as EmailExisted;
}

/// @nodoc

class _$EmailExisted implements EmailExisted {
  const _$EmailExisted();

  @override
  String toString() {
    return 'AuthFailure.emailExisted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EmailExisted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function() emailExisted,
    required TResult Function() invalidEmailAndPassword,
  }) {
    return emailExisted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function()? emailExisted,
    TResult Function()? invalidEmailAndPassword,
  }) {
    return emailExisted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function()? emailExisted,
    TResult Function()? invalidEmailAndPassword,
    required TResult orElse(),
  }) {
    if (emailExisted != null) {
      return emailExisted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailExisted value) emailExisted,
    required TResult Function(InvalidEmailAndPassword value)
        invalidEmailAndPassword,
  }) {
    return emailExisted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailExisted value)? emailExisted,
    TResult Function(InvalidEmailAndPassword value)? invalidEmailAndPassword,
  }) {
    return emailExisted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailExisted value)? emailExisted,
    TResult Function(InvalidEmailAndPassword value)? invalidEmailAndPassword,
    required TResult orElse(),
  }) {
    if (emailExisted != null) {
      return emailExisted(this);
    }
    return orElse();
  }
}

abstract class EmailExisted implements AuthFailure {
  const factory EmailExisted() = _$EmailExisted;
}

/// @nodoc
abstract class $InvalidEmailAndPasswordCopyWith<$Res> {
  factory $InvalidEmailAndPasswordCopyWith(InvalidEmailAndPassword value,
          $Res Function(InvalidEmailAndPassword) then) =
      _$InvalidEmailAndPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidEmailAndPasswordCopyWith<$Res> {
  _$InvalidEmailAndPasswordCopyWithImpl(InvalidEmailAndPassword _value,
      $Res Function(InvalidEmailAndPassword) _then)
      : super(_value, (v) => _then(v as InvalidEmailAndPassword));

  @override
  InvalidEmailAndPassword get _value => super._value as InvalidEmailAndPassword;
}

/// @nodoc

class _$InvalidEmailAndPassword implements InvalidEmailAndPassword {
  const _$InvalidEmailAndPassword();

  @override
  String toString() {
    return 'AuthFailure.invalidEmailAndPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InvalidEmailAndPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function() emailExisted,
    required TResult Function() invalidEmailAndPassword,
  }) {
    return invalidEmailAndPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function()? emailExisted,
    TResult Function()? invalidEmailAndPassword,
  }) {
    return invalidEmailAndPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function()? emailExisted,
    TResult Function()? invalidEmailAndPassword,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPassword != null) {
      return invalidEmailAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailExisted value) emailExisted,
    required TResult Function(InvalidEmailAndPassword value)
        invalidEmailAndPassword,
  }) {
    return invalidEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailExisted value)? emailExisted,
    TResult Function(InvalidEmailAndPassword value)? invalidEmailAndPassword,
  }) {
    return invalidEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailExisted value)? emailExisted,
    TResult Function(InvalidEmailAndPassword value)? invalidEmailAndPassword,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPassword != null) {
      return invalidEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAndPassword implements AuthFailure {
  const factory InvalidEmailAndPassword() = _$InvalidEmailAndPassword;
}
