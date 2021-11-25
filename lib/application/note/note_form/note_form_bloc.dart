import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icecream_todo/domain/notes/i_note_repository.dart';
import 'package:icecream_todo/domain/notes/note.dart';
import 'package:icecream_todo/domain/notes/note_failure.dart';
import 'package:icecream_todo/domain/notes/note_item.dart';
import 'package:icecream_todo/domain/notes/tag_item.dart';
import 'package:icecream_todo/domain/notes/value_objects.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'note_form_event.dart';
part 'note_form_state.dart';
part 'note_form_bloc.freezed.dart';

@injectable
class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  final INoteRepository _noteRepository;

  NoteFormBloc(this._noteRepository) : super(NoteFormState.initial()) {
    on<NoteFormEvent>(
      _onAction,
      transformer: sequential(),
    );
  }

  Future<void> _onAction(
    NoteFormEvent event,
    Emitter<NoteFormState> emit,
  ) async {
    await event.map(initialized: (e) {
      e.note.fold(
        () {},
        (note) {
          emit(
            state.copyWith(
              note: note,
              isEditing: true,
            ),
          );
        },
      );
    }, titleChanged: (e) {
      emit(
        state.copyWith(
          note: state.note.copyWith(
            title: NoteTitle(e.title),
          ),
          saveFailureOrSuccessOption: none(),
        ),
      );
    }, tagsChanged: (e) {
      emit(
        state.copyWith(
          note: state.note.copyWith(
            tags: Tags<TagItem>(e.tags),
          ),
        ),
      );
    }, notesChanged: (e) {
      final List<NoteItem> temp = [];
      for (var i = 0; i < e.notes.size; i++) {
        final item = e.notes.asList()[i].copyWith(
              index: i,
            );
        temp.add(item);
      }
      emit(
        state.copyWith(
          note: state.note.copyWith(
            notes: Notes<NoteItem>(temp.toImmutableList()),
          ),
        ),
      );
    }, save: (e) async {
      Either<NoteFailure, Unit>? response;
      emit(
        state.copyWith(
          isSaving: true,
        ),
      );
      if (state.note.failureOption.isNone()) {
        if (state.isEditing) {
          response = await _noteRepository.update(state.note);
        } else {
          response = await _noteRepository.create(state.note);
        }
      }
      emit(
        state.copyWith(
          isSaving: false,
          showErrMessage: true,
          saveFailureOrSuccessOption: optionOf(response),
        ),
      );
    }, delete: (e) async {
      emit(
        state.copyWith(
          isSaving: true,
        ),
      );
      final response = await _noteRepository.delete(state.note);
      emit(
        state.copyWith(
          isSaving: false,
          showErrMessage: true,
          saveFailureOrSuccessOption: optionOf(response),
        ),
      );
    });
  }
}
