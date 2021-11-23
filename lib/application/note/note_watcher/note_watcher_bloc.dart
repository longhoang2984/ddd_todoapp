import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icecream_todo/domain/notes/i_note_repository.dart';
import 'package:icecream_todo/domain/notes/note.dart';
import 'package:icecream_todo/domain/notes/note_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'note_watcher_event.dart';
part 'note_watcher_state.dart';
part 'note_watcher_bloc.freezed.dart';

@injectable
class NoteWatcherBloc extends Bloc<NoteWatcherEvent, NoteWatcherState> {
  final INoteRepository _noteRepository;

  NoteWatcherBloc(this._noteRepository)
      : super(const NoteWatcherState.initial()) {
    on<NoteWatcherEvent>(
      _onWatchAll,
      transformer: sequential(),
    );
  }

  Future<void> _onWatchAll(
    NoteWatcherEvent event,
    Emitter<NoteWatcherState> emit,
  ) async {
    await event.map(
      watchAllStarted: (e) async {
        emit(const NoteWatcherState.loadInProgress());
        final response = await _noteRepository.watchAll();
        add(NoteWatcherEvent.notesReceived(response));
      },
      watchUncompletedStarted: (e) async {
        emit(const NoteWatcherState.loadInProgress());
        final response = await _noteRepository.watchUncompleted();
        add(NoteWatcherEvent.notesReceived(response));
      },
      notesReceived: (e) async {
        e.failureOrNotes.fold(
          (f) {
            emit(
              NoteWatcherState.loadFailure(f),
            );
          },
          (notes) => emit(
            NoteWatcherState.loadSuccess(notes),
          ),
        );
      },
    );
  }
}
