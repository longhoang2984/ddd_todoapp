import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icecream_todo/domain/notes/note.dart';
import 'package:icecream_todo/domain/notes/note_item.dart';
import 'package:icecream_todo/domain/notes/tag_item.dart';
import 'package:icecream_todo/domain/notes/value_objects.dart';
import 'package:kt_dart/collection.dart';

part 'note_dtos.freezed.dart';
part 'note_dtos.g.dart';

@freezed
abstract class NoteDto implements _$NoteDto {
  const NoteDto._();

  static const String tableKey = "Note";
  static const String ownerIDKey = "ownerId";
  static const String tagsKey = "tags";
  static const String titleKey = "title";

  const factory NoteDto({
    required String id,
    required String title,
    required List<String> tags,
    required List<NoteItemDto> notes,
    required String ownerId,
  }) = _NoteDto;

  factory NoteDto.fromDomain(Note note) {
    final List<String> tags = note.tags
        .getOrCrash()
        .asList()
        .map((e) => e.name.getOrCrash())
        .toList();
    final List<NoteItemDto> noteItems = note.notes
        .getOrCrash()
        .asList()
        .map(
          (noteItem) => NoteItemDto.fromDomain(noteItem),
        )
        .toList();

    return NoteDto(
      id: note.id,
      title: note.title.getOrCrash(),
      tags: tags,
      notes: noteItems,
      ownerId: note.ownerId,
    );
  }

  Note get toDomain {
    final KtList<TagItem> tagList = tags
        .map(
          (tag) => TagItem(name: ItemString(tag)),
        )
        .toImmutableList();

    final KtList<NoteItem> noteList = notes
        .map(
          (noteItem) => noteItem.toDomain,
        )
        .toImmutableList();

    return Note(
      id: id,
      title: NoteTitle(title),
      tags: Tags(tagList),
      notes: Notes(noteList),
      ownerId: ownerId,
    );
  }

  factory NoteDto.fromJson(Map<String, dynamic> json) =>
      _$NoteDtoFromJson(json);
}

@freezed
abstract class NoteItemDto with _$NoteItemDto {
  const NoteItemDto._();

  static const String tableKey = "NoteItem";
  static const String ownerIDKey = "ownerId";
  static const String doneKey = "done";
  static const String nameKey = "name";

  const factory NoteItemDto({
    required String id,
    required String name,
    required bool done,
    required String ownerId,
  }) = _NoteItemDto;

  factory NoteItemDto.fromDomain(NoteItem noteItem) {
    return NoteItemDto(
      id: noteItem.id,
      name: noteItem.name.getOrCrash(),
      done: noteItem.done,
      ownerId: noteItem.ownerId,
    );
  }

  NoteItem get toDomain {
    return NoteItem(
      id: id,
      name: ItemString(name),
      done: done,
      ownerId: ownerId,
    );
  }

  factory NoteItemDto.fromJson(Map<String, dynamic> json) =>
      _$NoteItemDtoFromJson(json);
}
