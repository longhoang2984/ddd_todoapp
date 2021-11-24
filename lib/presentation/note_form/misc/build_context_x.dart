import 'package:flutter/material.dart';
import 'package:icecream_todo/domain/notes/note_item.dart';
import 'package:icecream_todo/domain/notes/tag_item.dart';
import 'package:icecream_todo/presentation/note_form/widgets/add_tag_tile.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';

extension NoteFormX on BuildContext {
  KtList<TagItem> get formTags =>
      Provider.of<FormTags>(this, listen: false).value;
  set formTags(KtList<TagItem> value) =>
      Provider.of<FormTags>(this, listen: false).value = value;

  KtList<NoteItem> get formSubNotes =>
      Provider.of<FormSubNotes>(this, listen: false).value;
  set formSubNotes(KtList<NoteItem> value) =>
      Provider.of<FormSubNotes>(this, listen: false).value = value;
}
