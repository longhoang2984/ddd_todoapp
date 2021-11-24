import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icecream_todo/application/note/note_form/note_form_bloc.dart';
import 'package:icecream_todo/domain/notes/note.dart';
import 'package:icecream_todo/gen/colors.gen.dart';
import 'package:icecream_todo/presentation/core/gradient_view.dart';
import 'package:icecream_todo/presentation/injection.dart';
import 'package:icecream_todo/presentation/note_form/widgets/note_form_body.dart';

class NoteFormPage extends StatelessWidget {
  const NoteFormPage({this.note, this.onNoteChanged, Key? key})
      : super(key: key);
  final Note? note;
  final Function()? onNoteChanged;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getLinearGradientView(
        colors: [
          ColorName.gradientSecondaryFirst,
          ColorName.gradientSecondarySecond,
        ],
        child: BlocProvider(
          create: (context) => getIt<NoteFormBloc>()
            ..add(
              NoteFormEvent.initialized(
                optionOf(note),
              ),
            ),
          child: NoteFormBody(
            onNoteChanged: onNoteChanged,
          ),
        ),
      ),
    );
  }
}
