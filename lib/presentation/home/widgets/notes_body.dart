import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icecream_todo/application/note/note_watcher/note_watcher_bloc.dart';
import 'package:icecream_todo/gen/assets.gen.dart';
import 'package:icecream_todo/gen/colors.gen.dart';

class NotesList extends StatelessWidget {
  const NotesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherBloc, NoteWatcherState>(
        builder: (context, state) {
      return state.map(
        initial: (_) => Container(),
        loadInProgress: (_) => Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircularProgressIndicator(
                  color: ColorName.primarySecond,
                ),
              ],
            ),
          ),
        ),
        loadSuccess: (state) => Center(
          child: Text(
            state.notes.asList().length.toString(),
          ),
        ),
        loadFailure: (_) => Container(),
      );
    });
  }
}
