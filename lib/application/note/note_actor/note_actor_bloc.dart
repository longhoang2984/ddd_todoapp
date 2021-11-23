import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icecream_todo/domain/notes/i_note_repository.dart';
import 'package:icecream_todo/domain/notes/note.dart';
import 'package:icecream_todo/domain/notes/note_failure.dart';
import 'package:injectable/injectable.dart';

part 'note_actor_event.dart';
part 'note_actor_state.dart';
part 'note_actor_bloc.freezed.dart';

@injectable
class NoteActorBloc extends Bloc<NoteActorEvent, NoteActorState> {
  final INoteRepository _noteRepository;

  NoteActorBloc(this._noteRepository) : super(const NoteActorState.initial()) {
    on<NoteActorEvent>(
      _onActor,
      transformer: sequential(),
    );
  }

  Future<void> _onActor(
    NoteActorEvent event,
    Emitter<NoteActorState> emit,
  ) async {
    await event.map(
      delete: (e) async {
        emit(
          const NoteActorState.actionInProgress(),
        );
        final response = await _noteRepository.delete(e.note);
        response.fold(
          (f) => emit(NoteActorState.deteleFailure(f)),
          (_) => emit(
            const NoteActorState.deleteSuccess(),
          ),
        );
      },
      create: (e) async {
        final response = await _noteRepository.create(Note.empty());
        response.fold(
          (f) {
            print(f);
          },
          (r) {},
        );
      },
    );
  }
}
