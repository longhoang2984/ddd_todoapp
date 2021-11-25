import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:icecream_todo/application/note/note_form/note_form_bloc.dart';
import 'package:icecream_todo/domain/notes/note_item.dart';
import 'package:icecream_todo/domain/notes/tag_item.dart';
import 'package:icecream_todo/domain/notes/value_objects.dart';
import 'package:icecream_todo/gen/assets.gen.dart';
import 'package:icecream_todo/gen/colors.gen.dart';
import 'package:icecream_todo/generated/locale_keys.g.dart';
import 'package:icecream_todo/presentation/core/utils/base_text_style.dart';
import 'package:icecream_todo/presentation/note_form/misc/build_context_x.dart';
import 'package:icecream_todo/presentation/note_form/widgets/add_tag_tile.dart';
import 'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';

class SubNoteList extends StatelessWidget {
  const SubNoteList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<NoteFormBloc, NoteFormState>(
      listenWhen: (p, c) => p.note.notes.isFull != c.note.notes.isFull,
      listener: (context, state) {},
      child: Consumer<FormSubNotes>(
        builder: (context, formSubNotes, child) {
          return ImplicitlyAnimatedReorderableList<NoteItem>(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            items: context.formSubNotes.asList(),
            areItemsTheSame: (oldItem, newItem) => oldItem.id == newItem.id,
            onReorderFinished: (item, from, to, newItems) {
              context.formSubNotes = newItems.toImmutableList();
              context.read<NoteFormBloc>().add(
                    NoteFormEvent.notesChanged(context.formSubNotes),
                  );
            },
            itemBuilder: (context, animation, noteItem, index) {
              return Reorderable(
                key: ValueKey(
                  noteItem.id,
                ),
                builder: (context, dragAnimation, inDrag) {
                  return ScaleTransition(
                    scale: Tween<double>(begin: 1, end: 0.95)
                        .animate(dragAnimation),
                    child: SubNoteTile(
                      index: index,
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

class SubNoteTile extends HookWidget {
  final int index;

  const SubNoteTile({required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subNote =
        context.formSubNotes.getOrElse(index, (_) => NoteItem.emtpy());
    final textEditingController =
        useTextEditingController(text: subNote.name.value.getOrElse(() => ''));

    return Slidable(
      endActionPane: ActionPane(
        extentRatio: 50 / 200,
        motion: const DrawerMotion(),
        children: [
          CustomSlidableAction(
            onPressed: (_) {
              context.formSubNotes = context.formSubNotes.minusElement(subNote);
              context.read<NoteFormBloc>().add(
                    NoteFormEvent.notesChanged(context.formSubNotes),
                  );
            },
            backgroundColor: ColorName.contextualError,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.images.icDelete.image(
                  height: 20.0,
                  color: ColorName.tertiaryWhite,
                ),
                Text(
                  LocaleKeys.delete.tr(),
                  style: BaseTextStyle.style(
                    color: ColorName.tertiaryWhite,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      child: Container(
        width: double.infinity,
        color: ColorName.tertiaryWhite,
        child: ListTile(
          leading: Assets.images.icList.image(height: 20.0),
          trailing: const Handle(
            child: Icon(Icons.reorder),
          ),
          title: TextFormField(
            controller: textEditingController,
            decoration: InputDecoration(
              border: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              hintText: LocaleKeys.add_sub_notes.tr(),
            ),
            onChanged: (value) {
              context.formSubNotes = context.formSubNotes.map(
                (ob) => subNote == ob
                    ? subNote.copyWith(name: ItemString(value))
                    : ob,
              );
              context.read<NoteFormBloc>().add(
                    NoteFormEvent.notesChanged(context.formSubNotes),
                  );
            },
            validator: (_) {
              return context.read<NoteFormBloc>().state.note.notes.value.fold(
                    (f) => null,
                    (noteList) => noteList[index].name.value.fold(
                          (f) => f.maybeMap(
                            exceedingLength: (_) => LocaleKeys.too_long.tr(),
                            empty: (_) => LocaleKeys.cannot_be_empty.tr(),
                            multiline: (_) => LocaleKeys.has_single_line.tr(),
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                  );
            },
          ),
        ),
      ),
    );
  }
}
