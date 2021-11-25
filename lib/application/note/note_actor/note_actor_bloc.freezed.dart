// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteActorEventTearOff {
  const _$NoteActorEventTearOff();

  _Delete delete(Note note) {
    return _Delete(
      note,
    );
  }

  _Update updateStatus(NoteItem noteItem) {
    return _Update(
      noteItem,
    );
  }
}

/// @nodoc
const $NoteActorEvent = _$NoteActorEventTearOff();

/// @nodoc
mixin _$NoteActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) delete,
    required TResult Function(NoteItem noteItem) updateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note note)? delete,
    TResult Function(NoteItem noteItem)? updateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? delete,
    TResult Function(NoteItem noteItem)? updateStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Delete value) delete,
    required TResult Function(_Update value) updateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Delete value)? delete,
    TResult Function(_Update value)? updateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Delete value)? delete,
    TResult Function(_Update value)? updateStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteActorEventCopyWith<$Res> {
  factory $NoteActorEventCopyWith(
          NoteActorEvent value, $Res Function(NoteActorEvent) then) =
      _$NoteActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteActorEventCopyWithImpl<$Res>
    implements $NoteActorEventCopyWith<$Res> {
  _$NoteActorEventCopyWithImpl(this._value, this._then);

  final NoteActorEvent _value;
  // ignore: unused_field
  final $Res Function(NoteActorEvent) _then;
}

/// @nodoc
abstract class _$DeleteCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
  $Res call({Note note});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$DeleteCopyWithImpl<$Res> extends _$NoteActorEventCopyWithImpl<$Res>
    implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(_Delete _value, $Res Function(_Delete) _then)
      : super(_value, (v) => _then(v as _Delete));

  @override
  _Delete get _value => super._value as _Delete;

  @override
  $Res call({
    Object? note = freezed,
  }) {
    return _then(_Delete(
      note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }

  @override
  $NoteCopyWith<$Res> get note {
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc

class _$_Delete implements _Delete {
  const _$_Delete(this.note);

  @override
  final Note note;

  @override
  String toString() {
    return 'NoteActorEvent.delete(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Delete &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  _$DeleteCopyWith<_Delete> get copyWith =>
      __$DeleteCopyWithImpl<_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) delete,
    required TResult Function(NoteItem noteItem) updateStatus,
  }) {
    return delete(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note note)? delete,
    TResult Function(NoteItem noteItem)? updateStatus,
  }) {
    return delete?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? delete,
    TResult Function(NoteItem noteItem)? updateStatus,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Delete value) delete,
    required TResult Function(_Update value) updateStatus,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Delete value)? delete,
    TResult Function(_Update value)? updateStatus,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Delete value)? delete,
    TResult Function(_Update value)? updateStatus,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements NoteActorEvent {
  const factory _Delete(Note note) = _$_Delete;

  Note get note;
  @JsonKey(ignore: true)
  _$DeleteCopyWith<_Delete> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) then) =
      __$UpdateCopyWithImpl<$Res>;
  $Res call({NoteItem noteItem});

  $NoteItemCopyWith<$Res> get noteItem;
}

/// @nodoc
class __$UpdateCopyWithImpl<$Res> extends _$NoteActorEventCopyWithImpl<$Res>
    implements _$UpdateCopyWith<$Res> {
  __$UpdateCopyWithImpl(_Update _value, $Res Function(_Update) _then)
      : super(_value, (v) => _then(v as _Update));

  @override
  _Update get _value => super._value as _Update;

  @override
  $Res call({
    Object? noteItem = freezed,
  }) {
    return _then(_Update(
      noteItem == freezed
          ? _value.noteItem
          : noteItem // ignore: cast_nullable_to_non_nullable
              as NoteItem,
    ));
  }

  @override
  $NoteItemCopyWith<$Res> get noteItem {
    return $NoteItemCopyWith<$Res>(_value.noteItem, (value) {
      return _then(_value.copyWith(noteItem: value));
    });
  }
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update(this.noteItem);

  @override
  final NoteItem noteItem;

  @override
  String toString() {
    return 'NoteActorEvent.updateStatus(noteItem: $noteItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Update &&
            (identical(other.noteItem, noteItem) ||
                other.noteItem == noteItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noteItem);

  @JsonKey(ignore: true)
  @override
  _$UpdateCopyWith<_Update> get copyWith =>
      __$UpdateCopyWithImpl<_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) delete,
    required TResult Function(NoteItem noteItem) updateStatus,
  }) {
    return updateStatus(noteItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note note)? delete,
    TResult Function(NoteItem noteItem)? updateStatus,
  }) {
    return updateStatus?.call(noteItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? delete,
    TResult Function(NoteItem noteItem)? updateStatus,
    required TResult orElse(),
  }) {
    if (updateStatus != null) {
      return updateStatus(noteItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Delete value) delete,
    required TResult Function(_Update value) updateStatus,
  }) {
    return updateStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Delete value)? delete,
    TResult Function(_Update value)? updateStatus,
  }) {
    return updateStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Delete value)? delete,
    TResult Function(_Update value)? updateStatus,
    required TResult orElse(),
  }) {
    if (updateStatus != null) {
      return updateStatus(this);
    }
    return orElse();
  }
}

abstract class _Update implements NoteActorEvent {
  const factory _Update(NoteItem noteItem) = _$_Update;

  NoteItem get noteItem;
  @JsonKey(ignore: true)
  _$UpdateCopyWith<_Update> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$NoteActorStateTearOff {
  const _$NoteActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _DeleteFailure deteleFailure(NoteFailure failure) {
    return _DeleteFailure(
      failure,
    );
  }

  _DeleteSuccess deleteSuccess() {
    return const _DeleteSuccess();
  }

  _UpdateFailed updateFailed() {
    return const _UpdateFailed();
  }
}

/// @nodoc
const $NoteActorState = _$NoteActorStateTearOff();

/// @nodoc
mixin _$NoteActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(NoteFailure failure) deteleFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() updateFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure failure)? deteleFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? updateFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure failure)? deteleFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? updateFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deteleFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_UpdateFailed value) updateFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deteleFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_UpdateFailed value)? updateFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deteleFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_UpdateFailed value)? updateFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteActorStateCopyWith<$Res> {
  factory $NoteActorStateCopyWith(
          NoteActorState value, $Res Function(NoteActorState) then) =
      _$NoteActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteActorStateCopyWithImpl<$Res>
    implements $NoteActorStateCopyWith<$Res> {
  _$NoteActorStateCopyWithImpl(this._value, this._then);

  final NoteActorState _value;
  // ignore: unused_field
  final $Res Function(NoteActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$NoteActorStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NoteActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(NoteFailure failure) deteleFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() updateFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure failure)? deteleFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? updateFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure failure)? deteleFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? updateFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deteleFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_UpdateFailed value) updateFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deteleFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_UpdateFailed value)? updateFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deteleFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_UpdateFailed value)? updateFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NoteActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$NoteActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'NoteActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(NoteFailure failure) deteleFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() updateFailed,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure failure)? deteleFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? updateFailed,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure failure)? deteleFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? updateFailed,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deteleFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_UpdateFailed value) updateFailed,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deteleFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_UpdateFailed value)? updateFailed,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deteleFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_UpdateFailed value)? updateFailed,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements NoteActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$DeleteFailureCopyWith<$Res> {
  factory _$DeleteFailureCopyWith(
          _DeleteFailure value, $Res Function(_DeleteFailure) then) =
      __$DeleteFailureCopyWithImpl<$Res>;
  $Res call({NoteFailure failure});

  $NoteFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$DeleteFailureCopyWithImpl<$Res>
    extends _$NoteActorStateCopyWithImpl<$Res>
    implements _$DeleteFailureCopyWith<$Res> {
  __$DeleteFailureCopyWithImpl(
      _DeleteFailure _value, $Res Function(_DeleteFailure) _then)
      : super(_value, (v) => _then(v as _DeleteFailure));

  @override
  _DeleteFailure get _value => super._value as _DeleteFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_DeleteFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as NoteFailure,
    ));
  }

  @override
  $NoteFailureCopyWith<$Res> get failure {
    return $NoteFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.failure);

  @override
  final NoteFailure failure;

  @override
  String toString() {
    return 'NoteActorState.deteleFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      __$DeleteFailureCopyWithImpl<_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(NoteFailure failure) deteleFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() updateFailed,
  }) {
    return deteleFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure failure)? deteleFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? updateFailed,
  }) {
    return deteleFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure failure)? deteleFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? updateFailed,
    required TResult orElse(),
  }) {
    if (deteleFailure != null) {
      return deteleFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deteleFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_UpdateFailed value) updateFailed,
  }) {
    return deteleFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deteleFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_UpdateFailed value)? updateFailed,
  }) {
    return deteleFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deteleFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_UpdateFailed value)? updateFailed,
    required TResult orElse(),
  }) {
    if (deteleFailure != null) {
      return deteleFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements NoteActorState {
  const factory _DeleteFailure(NoteFailure failure) = _$_DeleteFailure;

  NoteFailure get failure;
  @JsonKey(ignore: true)
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteSuccessCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(
          _DeleteSuccess value, $Res Function(_DeleteSuccess) then) =
      __$DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteSuccessCopyWithImpl<$Res>
    extends _$NoteActorStateCopyWithImpl<$Res>
    implements _$DeleteSuccessCopyWith<$Res> {
  __$DeleteSuccessCopyWithImpl(
      _DeleteSuccess _value, $Res Function(_DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _DeleteSuccess));

  @override
  _DeleteSuccess get _value => super._value as _DeleteSuccess;
}

/// @nodoc

class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'NoteActorState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(NoteFailure failure) deteleFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() updateFailed,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure failure)? deteleFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? updateFailed,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure failure)? deteleFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? updateFailed,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deteleFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_UpdateFailed value) updateFailed,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deteleFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_UpdateFailed value)? updateFailed,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deteleFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_UpdateFailed value)? updateFailed,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements NoteActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}

/// @nodoc
abstract class _$UpdateFailedCopyWith<$Res> {
  factory _$UpdateFailedCopyWith(
          _UpdateFailed value, $Res Function(_UpdateFailed) then) =
      __$UpdateFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateFailedCopyWithImpl<$Res>
    extends _$NoteActorStateCopyWithImpl<$Res>
    implements _$UpdateFailedCopyWith<$Res> {
  __$UpdateFailedCopyWithImpl(
      _UpdateFailed _value, $Res Function(_UpdateFailed) _then)
      : super(_value, (v) => _then(v as _UpdateFailed));

  @override
  _UpdateFailed get _value => super._value as _UpdateFailed;
}

/// @nodoc

class _$_UpdateFailed implements _UpdateFailed {
  const _$_UpdateFailed();

  @override
  String toString() {
    return 'NoteActorState.updateFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UpdateFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(NoteFailure failure) deteleFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() updateFailed,
  }) {
    return updateFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure failure)? deteleFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? updateFailed,
  }) {
    return updateFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure failure)? deteleFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? updateFailed,
    required TResult orElse(),
  }) {
    if (updateFailed != null) {
      return updateFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deteleFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_UpdateFailed value) updateFailed,
  }) {
    return updateFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deteleFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_UpdateFailed value)? updateFailed,
  }) {
    return updateFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deteleFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_UpdateFailed value)? updateFailed,
    required TResult orElse(),
  }) {
    if (updateFailed != null) {
      return updateFailed(this);
    }
    return orElse();
  }
}

abstract class _UpdateFailed implements NoteActorState {
  const factory _UpdateFailed() = _$_UpdateFailed;
}
