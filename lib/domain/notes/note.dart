import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icecream_todo/domain/core/failures.dart';
import 'package:icecream_todo/domain/notes/note_item.dart';
import 'package:icecream_todo/domain/notes/tag_item.dart';
import 'package:icecream_todo/domain/notes/value_objects.dart';
import 'package:kt_dart/collection.dart';

part 'note.freezed.dart';

@freezed
abstract class Note implements _$Note {
  const Note._();

  const factory Note({
    required String id,
    required NoteTitle title,
    required Tags<TagItem> tags,
    required Notes<NoteItem> notes,
    required String ownerId,
  }) = _Note;

  factory Note.empty() => Note(
        id: "",
        title: NoteTitle(''),
        tags: Tags(emptyList()),
        notes: Notes(emptyList()),
        ownerId: "",
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit
        .andThen(tags.failureOrUnit)
        .andThen(
          tags
              .getOrCrash()
              .map((tagItem) => tagItem.failureOption)
              .filter((o) => o.isSome())
              .getOrElse(0, (_) => none())
              .fold(
                () => right(unit),
                (f) => left(f),
              ),
        )
        .andThen(notes.failureOrUnit)
        .andThen(
          notes
              .getOrCrash()
              .map((noteItem) => noteItem.failureOption)
              .filter((o) => o.isSome())
              .getOrElse(0, (_) => none())
              .fold(
                () => right(unit),
                (f) => left(f),
              ),
        )
        .fold(
          (f) => some(f),
          (r) => none(),
        );
  }
}
