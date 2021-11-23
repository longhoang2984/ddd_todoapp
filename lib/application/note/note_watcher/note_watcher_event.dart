part of 'note_watcher_bloc.dart';

@freezed
class NoteWatcherEvent with _$NoteWatcherEvent {
  const factory NoteWatcherEvent.watchAllStarted() = _WatchStarted;
  const factory NoteWatcherEvent.watchUncompletedStarted() = _WatchUncompleted;
  const factory NoteWatcherEvent.notesReceived(
      Either<NoteFailure, KtList<Note>> failureOrNotes) = _NotesReceived;
}
