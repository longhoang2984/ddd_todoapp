// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteFormEventTearOff {
  const _$NoteFormEventTearOff();

  _Initialized initialized(Option<Note> note) {
    return _Initialized(
      note,
    );
  }

  _TitleChanged titleChanged(String title) {
    return _TitleChanged(
      title,
    );
  }

  _TagsChanged tagsChanged(KtList<TagItem> tags) {
    return _TagsChanged(
      tags,
    );
  }

  _NotesChanged notesChanged(KtList<NoteItem> notes) {
    return _NotesChanged(
      notes,
    );
  }

  _Save save() {
    return const _Save();
  }

  _Delete delete() {
    return const _Delete();
  }
}

/// @nodoc
const $NoteFormEvent = _$NoteFormEventTearOff();

/// @nodoc
mixin _$NoteFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> note) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(KtList<TagItem> tags) tagsChanged,
    required TResult Function(KtList<NoteItem> notes) notesChanged,
    required TResult Function() save,
    required TResult Function() delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Note> note)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(KtList<TagItem> tags)? tagsChanged,
    TResult Function(KtList<NoteItem> notes)? notesChanged,
    TResult Function()? save,
    TResult Function()? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> note)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(KtList<TagItem> tags)? tagsChanged,
    TResult Function(KtList<NoteItem> notes)? notesChanged,
    TResult Function()? save,
    TResult Function()? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_NotesChanged value) notesChanged,
    required TResult Function(_Save value) save,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormEventCopyWith<$Res> {
  factory $NoteFormEventCopyWith(
          NoteFormEvent value, $Res Function(NoteFormEvent) then) =
      _$NoteFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteFormEventCopyWithImpl<$Res>
    implements $NoteFormEventCopyWith<$Res> {
  _$NoteFormEventCopyWithImpl(this._value, this._then);

  final NoteFormEvent _value;
  // ignore: unused_field
  final $Res Function(NoteFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Note> note});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? note = freezed,
  }) {
    return _then(_Initialized(
      note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Option<Note>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.note);

  @override
  final Option<Note> note;

  @override
  String toString() {
    return 'NoteFormEvent.initialized(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialized &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> note) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(KtList<TagItem> tags) tagsChanged,
    required TResult Function(KtList<NoteItem> notes) notesChanged,
    required TResult Function() save,
    required TResult Function() delete,
  }) {
    return initialized(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Note> note)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(KtList<TagItem> tags)? tagsChanged,
    TResult Function(KtList<NoteItem> notes)? notesChanged,
    TResult Function()? save,
    TResult Function()? delete,
  }) {
    return initialized?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> note)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(KtList<TagItem> tags)? tagsChanged,
    TResult Function(KtList<NoteItem> notes)? notesChanged,
    TResult Function()? save,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_NotesChanged value) notesChanged,
    required TResult Function(_Save value) save,
    required TResult Function(_Delete value) delete,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements NoteFormEvent {
  const factory _Initialized(Option<Note> note) = _$_Initialized;

  Option<Note> get note;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TitleChangedCopyWith<$Res> {
  factory _$TitleChangedCopyWith(
          _TitleChanged value, $Res Function(_TitleChanged) then) =
      __$TitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$TitleChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$TitleChangedCopyWith<$Res> {
  __$TitleChangedCopyWithImpl(
      _TitleChanged _value, $Res Function(_TitleChanged) _then)
      : super(_value, (v) => _then(v as _TitleChanged));

  @override
  _TitleChanged get _value => super._value as _TitleChanged;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_TitleChanged(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'NoteFormEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TitleChanged &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      __$TitleChangedCopyWithImpl<_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> note) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(KtList<TagItem> tags) tagsChanged,
    required TResult Function(KtList<NoteItem> notes) notesChanged,
    required TResult Function() save,
    required TResult Function() delete,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Note> note)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(KtList<TagItem> tags)? tagsChanged,
    TResult Function(KtList<NoteItem> notes)? notesChanged,
    TResult Function()? save,
    TResult Function()? delete,
  }) {
    return titleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> note)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(KtList<TagItem> tags)? tagsChanged,
    TResult Function(KtList<NoteItem> notes)? notesChanged,
    TResult Function()? save,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_NotesChanged value) notesChanged,
    required TResult Function(_Save value) save,
    required TResult Function(_Delete value) delete,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements NoteFormEvent {
  const factory _TitleChanged(String title) = _$_TitleChanged;

  String get title;
  @JsonKey(ignore: true)
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TagsChangedCopyWith<$Res> {
  factory _$TagsChangedCopyWith(
          _TagsChanged value, $Res Function(_TagsChanged) then) =
      __$TagsChangedCopyWithImpl<$Res>;
  $Res call({KtList<TagItem> tags});
}

/// @nodoc
class __$TagsChangedCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$TagsChangedCopyWith<$Res> {
  __$TagsChangedCopyWithImpl(
      _TagsChanged _value, $Res Function(_TagsChanged) _then)
      : super(_value, (v) => _then(v as _TagsChanged));

  @override
  _TagsChanged get _value => super._value as _TagsChanged;

  @override
  $Res call({
    Object? tags = freezed,
  }) {
    return _then(_TagsChanged(
      tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as KtList<TagItem>,
    ));
  }
}

/// @nodoc

class _$_TagsChanged implements _TagsChanged {
  const _$_TagsChanged(this.tags);

  @override
  final KtList<TagItem> tags;

  @override
  String toString() {
    return 'NoteFormEvent.tagsChanged(tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TagsChanged &&
            (identical(other.tags, tags) || other.tags == tags));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tags);

  @JsonKey(ignore: true)
  @override
  _$TagsChangedCopyWith<_TagsChanged> get copyWith =>
      __$TagsChangedCopyWithImpl<_TagsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> note) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(KtList<TagItem> tags) tagsChanged,
    required TResult Function(KtList<NoteItem> notes) notesChanged,
    required TResult Function() save,
    required TResult Function() delete,
  }) {
    return tagsChanged(tags);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Note> note)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(KtList<TagItem> tags)? tagsChanged,
    TResult Function(KtList<NoteItem> notes)? notesChanged,
    TResult Function()? save,
    TResult Function()? delete,
  }) {
    return tagsChanged?.call(tags);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> note)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(KtList<TagItem> tags)? tagsChanged,
    TResult Function(KtList<NoteItem> notes)? notesChanged,
    TResult Function()? save,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (tagsChanged != null) {
      return tagsChanged(tags);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_NotesChanged value) notesChanged,
    required TResult Function(_Save value) save,
    required TResult Function(_Delete value) delete,
  }) {
    return tagsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
  }) {
    return tagsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (tagsChanged != null) {
      return tagsChanged(this);
    }
    return orElse();
  }
}

abstract class _TagsChanged implements NoteFormEvent {
  const factory _TagsChanged(KtList<TagItem> tags) = _$_TagsChanged;

  KtList<TagItem> get tags;
  @JsonKey(ignore: true)
  _$TagsChangedCopyWith<_TagsChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NotesChangedCopyWith<$Res> {
  factory _$NotesChangedCopyWith(
          _NotesChanged value, $Res Function(_NotesChanged) then) =
      __$NotesChangedCopyWithImpl<$Res>;
  $Res call({KtList<NoteItem> notes});
}

/// @nodoc
class __$NotesChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$NotesChangedCopyWith<$Res> {
  __$NotesChangedCopyWithImpl(
      _NotesChanged _value, $Res Function(_NotesChanged) _then)
      : super(_value, (v) => _then(v as _NotesChanged));

  @override
  _NotesChanged get _value => super._value as _NotesChanged;

  @override
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(_NotesChanged(
      notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as KtList<NoteItem>,
    ));
  }
}

/// @nodoc

class _$_NotesChanged implements _NotesChanged {
  const _$_NotesChanged(this.notes);

  @override
  final KtList<NoteItem> notes;

  @override
  String toString() {
    return 'NoteFormEvent.notesChanged(notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotesChanged &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notes);

  @JsonKey(ignore: true)
  @override
  _$NotesChangedCopyWith<_NotesChanged> get copyWith =>
      __$NotesChangedCopyWithImpl<_NotesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> note) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(KtList<TagItem> tags) tagsChanged,
    required TResult Function(KtList<NoteItem> notes) notesChanged,
    required TResult Function() save,
    required TResult Function() delete,
  }) {
    return notesChanged(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Note> note)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(KtList<TagItem> tags)? tagsChanged,
    TResult Function(KtList<NoteItem> notes)? notesChanged,
    TResult Function()? save,
    TResult Function()? delete,
  }) {
    return notesChanged?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> note)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(KtList<TagItem> tags)? tagsChanged,
    TResult Function(KtList<NoteItem> notes)? notesChanged,
    TResult Function()? save,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (notesChanged != null) {
      return notesChanged(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_NotesChanged value) notesChanged,
    required TResult Function(_Save value) save,
    required TResult Function(_Delete value) delete,
  }) {
    return notesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
  }) {
    return notesChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (notesChanged != null) {
      return notesChanged(this);
    }
    return orElse();
  }
}

abstract class _NotesChanged implements NoteFormEvent {
  const factory _NotesChanged(KtList<NoteItem> notes) = _$_NotesChanged;

  KtList<NoteItem> get notes;
  @JsonKey(ignore: true)
  _$NotesChangedCopyWith<_NotesChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SaveCopyWith<$Res> {
  factory _$SaveCopyWith(_Save value, $Res Function(_Save) then) =
      __$SaveCopyWithImpl<$Res>;
}

/// @nodoc
class __$SaveCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$SaveCopyWith<$Res> {
  __$SaveCopyWithImpl(_Save _value, $Res Function(_Save) _then)
      : super(_value, (v) => _then(v as _Save));

  @override
  _Save get _value => super._value as _Save;
}

/// @nodoc

class _$_Save implements _Save {
  const _$_Save();

  @override
  String toString() {
    return 'NoteFormEvent.save()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Save);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> note) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(KtList<TagItem> tags) tagsChanged,
    required TResult Function(KtList<NoteItem> notes) notesChanged,
    required TResult Function() save,
    required TResult Function() delete,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Note> note)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(KtList<TagItem> tags)? tagsChanged,
    TResult Function(KtList<NoteItem> notes)? notesChanged,
    TResult Function()? save,
    TResult Function()? delete,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> note)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(KtList<TagItem> tags)? tagsChanged,
    TResult Function(KtList<NoteItem> notes)? notesChanged,
    TResult Function()? save,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_NotesChanged value) notesChanged,
    required TResult Function(_Save value) save,
    required TResult Function(_Delete value) delete,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements NoteFormEvent {
  const factory _Save() = _$_Save;
}

/// @nodoc
abstract class _$DeleteCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(_Delete _value, $Res Function(_Delete) _then)
      : super(_value, (v) => _then(v as _Delete));

  @override
  _Delete get _value => super._value as _Delete;
}

/// @nodoc

class _$_Delete implements _Delete {
  const _$_Delete();

  @override
  String toString() {
    return 'NoteFormEvent.delete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Delete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> note) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(KtList<TagItem> tags) tagsChanged,
    required TResult Function(KtList<NoteItem> notes) notesChanged,
    required TResult Function() save,
    required TResult Function() delete,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Note> note)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(KtList<TagItem> tags)? tagsChanged,
    TResult Function(KtList<NoteItem> notes)? notesChanged,
    TResult Function()? save,
    TResult Function()? delete,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> note)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(KtList<TagItem> tags)? tagsChanged,
    TResult Function(KtList<NoteItem> notes)? notesChanged,
    TResult Function()? save,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_NotesChanged value) notesChanged,
    required TResult Function(_Save value) save,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements NoteFormEvent {
  const factory _Delete() = _$_Delete;
}

/// @nodoc
class _$NoteFormStateTearOff {
  const _$NoteFormStateTearOff();

  _NoteFormState call(
      {required Note note,
      required bool showErrMessage,
      required bool isEditing,
      required bool isSaving,
      required Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption}) {
    return _NoteFormState(
      note: note,
      showErrMessage: showErrMessage,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $NoteFormState = _$NoteFormStateTearOff();

/// @nodoc
mixin _$NoteFormState {
  Note get note => throw _privateConstructorUsedError;
  bool get showErrMessage => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<NoteFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteFormStateCopyWith<NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormStateCopyWith<$Res> {
  factory $NoteFormStateCopyWith(
          NoteFormState value, $Res Function(NoteFormState) then) =
      _$NoteFormStateCopyWithImpl<$Res>;
  $Res call(
      {Note note,
      bool showErrMessage,
      bool isEditing,
      bool isSaving,
      Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class _$NoteFormStateCopyWithImpl<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  _$NoteFormStateCopyWithImpl(this._value, this._then);

  final NoteFormState _value;
  // ignore: unused_field
  final $Res Function(NoteFormState) _then;

  @override
  $Res call({
    Object? note = freezed,
    Object? showErrMessage = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      showErrMessage: showErrMessage == freezed
          ? _value.showErrMessage
          : showErrMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NoteFailure, Unit>>,
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
abstract class _$NoteFormStateCopyWith<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  factory _$NoteFormStateCopyWith(
          _NoteFormState value, $Res Function(_NoteFormState) then) =
      __$NoteFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Note note,
      bool showErrMessage,
      bool isEditing,
      bool isSaving,
      Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$NoteFormStateCopyWithImpl<$Res>
    extends _$NoteFormStateCopyWithImpl<$Res>
    implements _$NoteFormStateCopyWith<$Res> {
  __$NoteFormStateCopyWithImpl(
      _NoteFormState _value, $Res Function(_NoteFormState) _then)
      : super(_value, (v) => _then(v as _NoteFormState));

  @override
  _NoteFormState get _value => super._value as _NoteFormState;

  @override
  $Res call({
    Object? note = freezed,
    Object? showErrMessage = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_NoteFormState(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      showErrMessage: showErrMessage == freezed
          ? _value.showErrMessage
          : showErrMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NoteFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_NoteFormState implements _NoteFormState {
  const _$_NoteFormState(
      {required this.note,
      required this.showErrMessage,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final Note note;
  @override
  final bool showErrMessage;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'NoteFormState(note: $note, showErrMessage: $showErrMessage, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoteFormState &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.showErrMessage, showErrMessage) ||
                other.showErrMessage == showErrMessage) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                other.saveFailureOrSuccessOption ==
                    saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note, showErrMessage, isEditing,
      isSaving, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$NoteFormStateCopyWith<_NoteFormState> get copyWith =>
      __$NoteFormStateCopyWithImpl<_NoteFormState>(this, _$identity);
}

abstract class _NoteFormState implements NoteFormState {
  const factory _NoteFormState(
      {required Note note,
      required bool showErrMessage,
      required bool isEditing,
      required bool isSaving,
      required Option<Either<NoteFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_NoteFormState;

  @override
  Note get note;
  @override
  bool get showErrMessage;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<NoteFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$NoteFormStateCopyWith<_NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
