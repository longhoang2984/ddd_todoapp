import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:icecream_todo/application/note/note_form/note_form_bloc.dart';
import 'package:icecream_todo/domain/notes/note_item.dart';
import 'package:icecream_todo/domain/notes/tag_item.dart';
import 'package:icecream_todo/domain/notes/value_objects.dart';
import 'package:icecream_todo/gen/assets.gen.dart';
import 'package:icecream_todo/gen/colors.gen.dart';
import 'package:icecream_todo/generated/locale_keys.g.dart';
import 'package:icecream_todo/presentation/note_form/misc/build_context_x.dart';
import 'package:icecream_todo/presentation/note_form/widgets/add_tag_tile.dart';
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
          return ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: formSubNotes.value.size,
            itemBuilder: (context, index) {
              return SubNoteTile(
                index: index,
                key: Key('$index'),
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
    final tag = context.formSubNotes.getOrElse(index, (_) => NoteItem.emtpy());
    final textEditingController =
        useTextEditingController(text: tag.name.value.getOrElse(() => ''));

    return Container(
      width: double.infinity,
      color: ColorName.tertiaryWhite,
      child: ListTile(
        leading: Assets.images.icTags.image(height: 20.0),
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
              (ob) => tag == ob ? tag.copyWith(name: ItemString(value)) : ob,
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
                          exceedingLength: (_) => 'Too long',
                          empty: (_) => 'Cannot be empty',
                          multiline: (_) => 'Has to be in a single line',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                );
          },
        ),
      ),
    );
  }
}
