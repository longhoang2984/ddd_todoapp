// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoteDto _$$_NoteDtoFromJson(Map<String, dynamic> json) => _$_NoteDto(
      id: json['id'] as String,
      title: json['title'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      notes: (json['notes'] as List<dynamic>)
          .map((e) => NoteItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      ownerId: json['ownerId'] as String,
    );

Map<String, dynamic> _$$_NoteDtoToJson(_$_NoteDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'tags': instance.tags,
      'notes': instance.notes,
      'ownerId': instance.ownerId,
    };

_$_NoteItemDto _$$_NoteItemDtoFromJson(Map<String, dynamic> json) =>
    _$_NoteItemDto(
      id: json['id'] as String,
      name: json['name'] as String,
      done: json['done'] as bool,
      ownerId: json['ownerId'] as String,
      noteId: json['noteId'] as String,
      isInitial: json['isInitial'] as bool? ?? false,
    );

Map<String, dynamic> _$$_NoteItemDtoToJson(_$_NoteItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'done': instance.done,
      'ownerId': instance.ownerId,
      'noteId': instance.noteId,
      'isInitial': instance.isInitial,
    };
