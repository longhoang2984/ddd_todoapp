part of 'note_actor_bloc.dart';

@freezed
class NoteActorEvent with _$NoteActorEvent {
  const factory NoteActorEvent.delete(Note note) = _Delete;
  const factory NoteActorEvent.updateStatus(NoteItem noteItem) = _Update;
}
