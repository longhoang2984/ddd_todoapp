import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icecream_todo/domain/core/failures.dart';
import 'package:icecream_todo/domain/notes/value_objects.dart';

part 'note_item.freezed.dart';

@freezed
abstract class NoteItem implements _$NoteItem {
  const NoteItem._();

  const factory NoteItem({
    required String id,
    required ItemString name,
    required bool done,
    required String ownerId,
    required String noteId,
  }) = _NoteItem;

  factory NoteItem.emtpy() => NoteItem(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        name: ItemString(''),
        done: false,
        ownerId: "",
        noteId: "",
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.value.fold(
      (f) => some(f),
      (_) => none(),
    );
  }
}
