import 'package:dartz/dartz.dart';
import 'package:icecream_todo/domain/notes/note.dart';
import 'package:icecream_todo/domain/notes/note_failure.dart';
import 'package:icecream_todo/domain/notes/note_item.dart';
import 'package:kt_dart/collection.dart';

abstract class INoteRepository {
  Future<Either<NoteFailure, KtList<Note>>> watchAll();
  Future<Either<NoteFailure, KtList<Note>>> watchUncompleted();
  Future<Either<NoteFailure, Unit>> create(Note note);
  Future<Either<NoteFailure, Unit>> update(Note note);
  Future<Either<NoteFailure, Unit>> delete(Note note);
  Future<Either<NoteFailure, Unit>> updateNoteItemStatus(NoteItem note);
}
