import 'package:dartz/dartz.dart';
import 'package:icecream_todo/domain/auth/i_auth_facade.dart';
import 'package:icecream_todo/domain/auth/user.dart';
import 'package:icecream_todo/domain/notes/i_note_repository.dart';
import 'package:icecream_todo/domain/notes/note.dart';
import 'package:icecream_todo/domain/notes/note_failure.dart';
import 'package:icecream_todo/infrastructure/core/parse_object_helper.dart';
import 'package:icecream_todo/infrastructure/note/note_dtos.dart';
import 'package:icecream_todo/presentation/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

@LazySingleton(as: INoteRepository)
class NoteRepository extends INoteRepository {
  NoteRepository();

  @override
  Future<Either<NoteFailure, Unit>> create(Note note) async {
    final noteItem =
        await ParseObjectX.objectByCurrentUser(NoteItemDto.tableKey);
    noteItem.set(NoteItemDto.doneKey, false);
    noteItem.set(NoteItemDto.nameKey, "abc");
    await noteItem.save();

    final noteItem2 =
        await ParseObjectX.objectByCurrentUser(NoteItemDto.tableKey);
    noteItem2.set(NoteItemDto.doneKey, false);
    noteItem2.set(NoteItemDto.nameKey, "def");
    await noteItem2.save();

    final note = await ParseObjectX.objectByCurrentUser(NoteDto.tableKey);
    note.set(NoteDto.tagsKey, ["abc, def"]);
    note.addRelation("noteItems", [
      ParseObject(NoteItemDto.tableKey)..set("objectId", noteItem.objectId),
      ParseObject(NoteItemDto.tableKey)..set("objectId", noteItem2.objectId)
    ]);
    await note.save();

    return right(unit);
  }

  @override
  Future<Either<NoteFailure, Unit>> delete(Note note) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<NoteFailure, Unit>> update(Note note) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<Either<NoteFailure, KtList<Note>>> watchAll() async {
    final userId = await _getUserId();
    if (userId.isEmpty) {
      return left(const NoteFailure.sessionExpired());
    }
    try {
      final notesQuery =
          QueryBuilder<ParseObject>(ParseObject(NoteDto.tableKey))
            ..whereEqualTo(
              NoteDto.ownerIDKey,
              userId,
            );
      final ParseResponse notes = await notesQuery.query();

      if (!notes.success && notes.results != null) {
        return left(const NoteFailure.unexpected());
      }

      final List<NoteDto> noteList = [];
      for (final note in notes.results! as List<ParseObject>) {
        final QueryBuilder<ParseObject> noteItemsQuery =
            QueryBuilder<ParseObject>(ParseObject(NoteItemDto.tableKey))
              ..whereRelatedTo("noteItems", NoteDto.tableKey, note.objectId!);
        final items = await noteItemsQuery.query();
        final List<NoteItemDto> noteItemList = [];
        for (final item in items.results! as List<ParseObject>) {
          final noteItemDto = item.toNoteItemDto();
          if (noteItemDto != null) {
            noteItemList.add(noteItemDto);
          }
        }
        final noteDto = note.toNoteDto(noteItemList);
        if (noteDto != null) {
          noteList.add(noteDto);
        }
      }

      return right(noteList.map((e) => e.toDomain).toImmutableList());
    } catch (e) {
      return left(const NoteFailure.unexpected());
    }
  }

  @override
  Future<Either<NoteFailure, KtList<Note>>> watchUncompleted() {
    // TODO: implement watchUncompleted
    throw UnimplementedError();
  }

  Future<String> _getUserId() async {
    final user = await getIt<IAuthFacade>().getCurrentUser();
    final String userId = user.getOrElse(() => const User(id: '')).id;
    return userId;
  }
}
