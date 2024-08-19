import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:icecream_todo/application/note/note_actor/note_actor_bloc.dart';
import 'package:icecream_todo/application/note/note_watcher/note_watcher_bloc.dart';
import 'package:icecream_todo/domain/notes/note.dart';
import 'package:icecream_todo/domain/notes/note_item.dart';
import 'package:icecream_todo/gen/assets.gen.dart';
import 'package:icecream_todo/gen/colors.gen.dart';
import 'package:icecream_todo/generated/locale_keys.g.dart';
import 'package:icecream_todo/presentation/core/gradient_view.dart';
import 'package:icecream_todo/presentation/core/utils/base_text_style.dart';
import 'package:icecream_todo/presentation/home/widgets/note_status.dart';
import 'package:icecream_todo/presentation/routes/router.gr.dart';

class NotesList extends StatelessWidget {
  const NotesList({Key? key, this.onNoteChanged}) : super(key: key);
  final Function()? onNoteChanged;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NoteWatcherBloc, NoteWatcherState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => Container(),
          loadSuccess: (state) {
            return ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 20.0,
                );
              },
              itemCount: state.notes.size,
              itemBuilder: (context, index) {
                final note = state.notes[index];
                return GestureDetector(
                  onTap: () {
                    context.router.push(
                      NoteFormPageRoute(
                        note: note,
                        onNoteChanged: onNoteChanged,
                      ),
                    );
                  },
                  onLongPress: () {
                    _showDeletionDialog(
                      context,
                      context.read<NoteActorBloc>(),
                      note,
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 24.0,
                        padding: const EdgeInsets.symmetric(
                          vertical: 4.0,
                          horizontal: 16.0,
                        ),
                        decoration: BoxDecoration(
                          color: ColorName.tertiaryLight.withAlpha(90),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: Text(
                          note.title.value.getOrElse(() => '').toUpperCase(),
                          style: BaseTextStyle.style(
                            color: Colors.white,
                            fontSize: 12.0,
                            style: FontStyle.dark,
                          ),
                        ),
                      ),
                      Container(
                        height: 8.0,
                      ),
                      getLinearGradientView(
                        radius: 2.0,
                        colors: [
                          ColorName.tertiaryLight.withAlpha(60),
                          ColorName.tertiaryExtraLight,
                        ],
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 24.0,
                          ),
                          child: Column(
                            children: [
                              // ignore: prefer_if_elements_to_conditional_expressions
                              _getTagsList(note),
                              const SizedBox(
                                height: 10,
                              ),
                              // ignore: prefer_if_elements_to_conditional_expressions
                              _getNoteList(note),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          loadFailure: (_) => Container(),
        );
      },
    );
  }

  Widget _getTagsList(Note note) {
    return note.tags.failureOrUnit.isRight()
        ? SizedBox(
            height: note.tags.getOrCrash().asList().isNotEmpty ? 24.0 : 0.0,
            width: double.infinity,
            child: ListView.separated(
              padding: const EdgeInsets.only(left: 40.0),
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 5.0,
                );
              },
              scrollDirection: Axis.horizontal,
              itemCount: note.tags.getOrCrash().asList().length,
              itemBuilder: (context, index) {
                final tagItem = note.tags.getOrCrash().asList()[index];
                return getLinearGradientView(
                  radius: 2.0,
                  colors: [
                    ColorName.gradientSecondaryFirst,
                    ColorName.gradientSecondarySecond,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 15.0,
                    ),
                    child: Text(
                      tagItem.name.value.getOrElse(() => '').toUpperCase(),
                      style: BaseTextStyle.style(
                        style: FontStyle.dark,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        : Container();
  }

  Widget _getNoteList(Note note) {
    return note.notes.failureOrUnit.isRight()
        ? (note.notes.getOrCrash().asList().isNotEmpty
            ? ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return SubNoteItem(
                    noteItem: note.notes.getOrCrash().asList()[index],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 5.0,
                  );
                },
                itemCount: note.notes.getOrCrash().asList().length,
              )
            : Text(
                '👉 ${LocaleKeys.add_sub_notes.tr()}',
                style: BaseTextStyle.style(
                  style: FontStyle.bold,
                  fontSize: 20.0,
                ),
              ))
        : Container();
  }

  void _showDeletionDialog(
      BuildContext context, NoteActorBloc noteActorBloc, Note note) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(
            LocaleKeys.do_you_want_to_delete
                .tr(args: [note.title.getOrCrash()]),
            style: BaseTextStyle.style(
              fontSize: 16,
            ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                LocaleKeys.cancel.tr().toUpperCase(),
                style: BaseTextStyle.style(
                  style: FontStyle.medium,
                  color: ColorName.tertiaryLight,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                noteActorBloc.add(NoteActorEvent.delete(note));
                Navigator.pop(context);
              },
              child: Text(
                LocaleKeys.delete.tr().toUpperCase(),
                style: BaseTextStyle.style(
                  style: FontStyle.bold,
                  color: ColorName.contextualError,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class SubNoteItem extends HookWidget {
  SubNoteItem({Key? key, required this.noteItem}) : super(key: key);
  final debouncer = Debouncer(milliseconds: 500);
  final NoteItem noteItem;

  @override
  Widget build(BuildContext context) {
    final state = useState(noteItem.done);
    return ListTile(
      leading: GestureDetector(
        onTap: () {
          final newNote = noteItem.copyWith(
            done: !noteItem.done,
          );
          state.value = !state.value;
          debouncer.run(
            () {
              context
                  .read<NoteActorBloc>()
                  .add(NoteActorEvent.updateStatus(newNote));
            },
          );
        },
        child: (state.value ? Assets.images.icChecked : Assets.images.icUncheck)
            .image(
          height: 24.0,
          width: 24.0,
        ),
      ),
      title: Text(
        noteItem.name.value.getOrElse(() => ''),
        style: BaseTextStyle.style(
          fontSize: 16.0,
          style: FontStyle.extrabold,
        ),
      ),
    );
  }
}
