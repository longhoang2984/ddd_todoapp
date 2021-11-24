import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icecream_todo/application/note/note_form/note_form_bloc.dart';
import 'package:icecream_todo/domain/notes/note_item.dart';
import 'package:icecream_todo/gen/assets.gen.dart';
import 'package:icecream_todo/gen/colors.gen.dart';
import 'package:icecream_todo/generated/locale_keys.g.dart';
import 'package:icecream_todo/presentation/core/utils/base_text_style.dart';
import 'package:icecream_todo/presentation/note_form/misc/build_context_x.dart';
import 'package:icecream_todo/presentation/note_form/widgets/add_tag_tile.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';

class AddSubNotesTile extends StatelessWidget {
  const AddSubNotesTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NoteFormBloc, NoteFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        context.formSubNotes = state.note.notes.value.getOrElse(
          () => listOf<NoteItem>(),
        );
      },
      buildWhen: (p, c) => p.note.tags.isFull != c.note.tags.isFull,
      builder: (context, state) {
        return !state.note.tags.isFull
            ? Container(
                height: 60.0,
                width: double.infinity,
                color: const Color(0xFFFFD8DE),
                child: ListTile(
                  enabled: !state.note.tags.isFull,
                  title: Text(
                    LocaleKeys.add_sub_notes.tr(),
                    style: BaseTextStyle.style(
                      color: ColorName.tertiaryMedium,
                      fontSize: 16.0,
                      style: FontStyle.extrabold,
                    ),
                  ),
                  leading: Assets.images.icAdd.image(
                    height: 20.0,
                    color: ColorName.tertiaryMedium,
                  ),
                  onTap: () {
                    context.formSubNotes =
                        Provider.of<FormSubNotes>(context, listen: false)
                            .value
                            .plusElement(NoteItem.emtpy());
                    context.read<NoteFormBloc>().add(
                          NoteFormEvent.notesChanged(
                            context.formSubNotes,
                          ),
                        );
                  },
                ),
              )
            : Container();
      },
    );
  }
}
