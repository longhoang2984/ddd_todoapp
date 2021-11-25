import 'package:icecream_todo/domain/auth/i_auth_facade.dart';
import 'package:icecream_todo/domain/core/errors.dart';
import 'package:icecream_todo/infrastructure/note/note_dtos.dart';
import 'package:icecream_todo/presentation/injection.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

extension ParseObjectX on ParseObject {
  static Future<ParseObject> objectByCurrentUser(String key) async {
    final userOption = await getIt<IAuthFacade>().getCurrentUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    final String userId = user.id;
    return ParseObject(key)..set(NoteDto.ownerIDKey, userId);
  }

  NoteItemDto? toNoteItemDto() {
    if (objectId == null) {
      return null;
    }
    final noteId = get<ParseObject>(NoteItemDto.noteIdKey)?.objectId;
    if (noteId == null) {
      return null;
    }
    return NoteItemDto(
      id: objectId!,
      name: get(NoteItemDto.nameKey).toString(),
      done: get<bool>(NoteItemDto.doneKey) ?? false,
      ownerId: get<String>(NoteItemDto.ownerIDKey) ?? '',
      noteId: noteId,
      index: get<int>(NoteItemDto.indexKey) ?? 0,
    );
  }

  NoteDto? toNoteDto(List<NoteItemDto> notes) {
    if (objectId == null) {
      return null;
    }
    final tagList =
        get<List>(NoteDto.tagsKey)?.map((e) => e.toString()).toList() ?? [];
    return NoteDto(
      id: objectId!,
      title: get<String>(NoteDto.titleKey) ?? '',
      tags: tagList,
      notes: notes,
      ownerId: get<String>(NoteItemDto.ownerIDKey) ?? '',
    );
  }
}

Future<QueryBuilder<ParseObject>> queryBuilderByCurrentUser(
  String key,
) async {
  final userOption = await getIt<IAuthFacade>().getCurrentUser();
  final user = userOption.getOrElse(() => throw NotAuthenticatedError());
  final String userId = user.id;
  final parsedQuery = QueryBuilder(ParseObject(key))
    ..whereEqualTo(NoteDto.ownerIDKey, userId);
  return parsedQuery;
}
