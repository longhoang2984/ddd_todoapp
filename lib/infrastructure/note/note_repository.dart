import 'package:dartz/dartz.dart';
import 'package:icecream_todo/domain/auth/i_auth_facade.dart';
import 'package:icecream_todo/domain/auth/user.dart';
import 'package:icecream_todo/domain/notes/i_note_repository.dart';
import 'package:icecream_todo/domain/notes/note.dart';
import 'package:icecream_todo/domain/notes/note_failure.dart';
import 'package:icecream_todo/domain/notes/note_item.dart';
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
    try {
      final noteDto = NoteDto.fromDomain(note);
      final noteObject =
          await ParseObjectX.objectByCurrentUser(NoteDto.tableKey);
      noteObject.set(NoteDto.tagsKey, noteDto.tags);
      noteObject.set(NoteDto.titleKey, noteDto.title);
      final noteResponse = await noteObject.save();

      final createNoteError = noteResponse.error;
      if (createNoteError != null) {
        return left(
          NoteFailure.errorFromServer(createNoteError.message),
        );
      }

      for (final noteItem in noteDto.notes) {
        final noteItemObject =
            await ParseObjectX.objectByCurrentUser(NoteItemDto.tableKey);
        noteItemObject.set(NoteItemDto.doneKey, noteItem.done);
        noteItemObject.set(NoteItemDto.nameKey, noteItem.name);
        noteItemObject.set(NoteItemDto.noteIdKey, noteObject);
        noteItemObject.set(NoteItemDto.indexKey, noteItem.index + 1);
        await noteItemObject.save();
      }

      return right(unit);
    } catch (err) {
      return left(const NoteFailure.unexpected());
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> delete(Note note) async {
    try {
      final noteDto = NoteDto.fromDomain(note);
      final noteObject =
          await ParseObjectX.objectByCurrentUser(NoteDto.tableKey);
      noteObject.objectId = noteDto.id;
      final noteResponse = await noteObject.delete();

      final updateNoteError = noteResponse.error;
      if (updateNoteError != null) {
        return left(
          NoteFailure.errorFromServer(updateNoteError.message),
        );
      }

      for (final noteItem in noteDto.notes) {
        final noteItemObject =
            await ParseObjectX.objectByCurrentUser(NoteItemDto.tableKey);
        noteItemObject.objectId = noteItem.id;
        await noteItemObject.delete();
      }

      return right(unit);
    } catch (err) {
      return left(const NoteFailure.unexpected());
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> update(Note note) async {
    try {
      final noteDto = NoteDto.fromDomain(note);
      final noteObject =
          await ParseObjectX.objectByCurrentUser(NoteDto.tableKey);
      noteObject.objectId = noteDto.id;
      noteObject.set(NoteDto.tagsKey, noteDto.tags);
      noteObject.set(NoteDto.titleKey, noteDto.title);
      final noteResponse = await noteObject.save();

      final updateNoteError = noteResponse.error;
      if (updateNoteError != null) {
        return left(
          NoteFailure.errorFromServer(updateNoteError.message),
        );
      }

      for (final noteItem in noteDto.notes) {
        final noteItemObject =
            await ParseObjectX.objectByCurrentUser(NoteItemDto.tableKey);
        if (noteItem.id.isNotEmpty && !noteItem.isInitial) {
          noteItemObject.objectId = noteItem.id;
        }
        noteItemObject.set(NoteItemDto.doneKey, noteItem.done);
        noteItemObject.set(NoteItemDto.nameKey, noteItem.name);
        noteItemObject.set(NoteItemDto.noteIdKey, noteObject);
        noteItemObject.set(NoteItemDto.indexKey, noteItem.index + 1);
        await noteItemObject.save();
      }

      return right(unit);
    } catch (err) {
      return left(const NoteFailure.unexpected());
    }
  }

  @override
  Future<Either<NoteFailure, KtList<Note>>> watchAll() async {
    final userId = await _getUserId();
    if (userId.isEmpty) {
      return left(const NoteFailure.sessionExpired());
    }
    try {
      final notesQuery = await queryBuilderByCurrentUser(NoteDto.tableKey)
        ..orderByDescending('updatedAt');
      final ParseResponse notes = await notesQuery.query();

      if (!notes.success && notes.results != null) {
        return left(const NoteFailure.unexpected());
      }
      if (notes.count == 0) {
        return right(emptyList());
      }
      final List<NoteDto> noteList = [];
      for (final note in notes.results! as List<ParseObject>) {
        final QueryBuilder<ParseObject> noteItemsQuery =
            await queryBuilderByCurrentUser(NoteItemDto.tableKey)
              ..whereEqualTo(
                NoteItemDto.noteIdKey,
                (ParseObject(NoteDto.tableKey)..objectId = note.objectId)
                    .toPointer(),
              )
              ..orderByAscending(NoteItemDto.indexKey);
        final items = await noteItemsQuery.query();
        final List<NoteItemDto> noteItemList = [];
        if (items.count != 0) {
          for (final item in items.results! as List<ParseObject>) {
            final noteItemDto = item.toNoteItemDto();
            if (noteItemDto != null) {
              noteItemList.add(noteItemDto);
            }
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
  Future<Either<NoteFailure, KtList<Note>>> watchUncompleted() async {
    final userId = await _getUserId();
    if (userId.isEmpty) {
      return left(const NoteFailure.sessionExpired());
    }
    try {
      final notesQuery = await queryBuilderByCurrentUser(NoteDto.tableKey)
        ..orderByDescending('updatedAt');
      final ParseResponse notes = await notesQuery.query();

      if (!notes.success && notes.results != null) {
        return left(const NoteFailure.unexpected());
      }

      if (notes.count == 0) {
        return right(emptyList());
      }

      final List<NoteDto> noteList = [];
      for (final note in notes.results! as List<ParseObject>) {
        final QueryBuilder<ParseObject> noteItemsQuery =
            await queryBuilderByCurrentUser(NoteItemDto.tableKey)
              ..whereEqualTo(
                NoteItemDto.noteIdKey,
                (ParseObject(NoteDto.tableKey)..objectId = note.objectId)
                    .toPointer(),
              );
        final items = await noteItemsQuery.query();
        final List<NoteItemDto> noteItemList = [];
        bool isUncomplete = true;
        if (items.count != 0) {
          for (final item in items.results! as List<ParseObject>) {
            final noteItemDto = item.toNoteItemDto();
            if (noteItemDto != null) {
              noteItemList.add(noteItemDto);
              if (noteItemDto.done) {
                isUncomplete = false;
              }
            }
          }
        }
        final noteDto = note.toNoteDto(noteItemList);
        if (noteDto != null && isUncomplete) {
          noteList.add(noteDto);
        }
      }

      return right(noteList.map((e) => e.toDomain).toImmutableList());
    } catch (e) {
      return left(const NoteFailure.unexpected());
    }
  }

  Future<String> _getUserId() async {
    final user = await getIt<IAuthFacade>().getCurrentUser();
    final String userId = user.getOrElse(() => const User(id: '')).id;
    return userId;
  }

  @override
  Future<Either<NoteFailure, Unit>> updateNoteItemStatus(NoteItem note) async {
    try {
      final noteItemObject =
          await ParseObjectX.objectByCurrentUser(NoteItemDto.tableKey);
      noteItemObject.objectId = note.id;
      noteItemObject.set(NoteItemDto.doneKey, note.done);
      final response = await noteItemObject.save();
      final updateNoteError = response.error;
      if (updateNoteError != null) {
        return left(
          NoteFailure.errorFromServer(updateNoteError.message),
        );
      }
      return right(unit);
    } catch (e) {
      return left(
        const NoteFailure.unexpected(),
      );
    }
  }
}
