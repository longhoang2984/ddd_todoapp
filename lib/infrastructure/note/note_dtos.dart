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
    final List<TagItem> tempTagList = [];
    for (var i = 0; i < tags.length; i++) {
      final item = TagItem(
        name: ItemString(tags[i]),
        id: id +
            i.toString() +
            DateTime.now().millisecondsSinceEpoch.toString(),
      );
      tempTagList.add(item);
    }
    final KtList<TagItem> tagList = tempTagList.toImmutableList();

    final List<NoteItem> tempNoteList = [];
    for (var i = 0; i < notes.length; i++) {
      final item = notes[i].toDomain.copyWith(
            index: i,
          );
      tempNoteList.add(item);
    }
    final KtList<NoteItem> noteList = tempNoteList.toImmutableList();

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
  static const String noteIdKey = "noteId";
  static const String indexKey = "itemIndex";

  const factory NoteItemDto({
    required String id,
    required String name,
    required bool done,
    required String ownerId,
    required String noteId,
    required int index,
    @Default(false) bool isInitial,
  }) = _NoteItemDto;

  factory NoteItemDto.fromDomain(NoteItem noteItem) {
    return NoteItemDto(
      id: noteItem.id,
      name: noteItem.name.getOrCrash(),
      done: noteItem.done,
      ownerId: noteItem.ownerId,
      noteId: noteItem.id,
      isInitial: noteItem.isInitial,
      index: noteItem.index,
    );
  }

  NoteItem get toDomain {
    return NoteItem(
      id: id,
      name: ItemString(name),
      done: done,
      ownerId: ownerId,
      noteId: noteId,
      isInitial: false,
      index: index,
    );
  }

  factory NoteItemDto.fromJson(Map<String, dynamic> json) =>
      _$NoteItemDtoFromJson(json);
}
