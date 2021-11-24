part of 'note_form_bloc.dart';

@freezed
class NoteFormEvent with _$NoteFormEvent {
  const factory NoteFormEvent.initialized(Option<Note> note) = _Initialized;
  const factory NoteFormEvent.titleChanged(String title) = _TitleChanged;
  const factory NoteFormEvent.tagsChanged(KtList<TagItem> tags) = _TagsChanged;
  const factory NoteFormEvent.notesChanged(KtList<NoteItem> notes) =
      _NotesChanged;
  const factory NoteFormEvent.save() = _Save;
  const factory NoteFormEvent.delete() = _Delete;
}
