import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:icecream_todo/application/note/note_form/note_form_bloc.dart';
import 'package:icecream_todo/domain/notes/tag_item.dart';
import 'package:icecream_todo/domain/notes/value_objects.dart';
import 'package:icecream_todo/gen/assets.gen.dart';
import 'package:icecream_todo/gen/colors.gen.dart';
import 'package:icecream_todo/generated/locale_keys.g.dart';
import 'package:icecream_todo/presentation/note_form/misc/build_context_x.dart';
import 'package:icecream_todo/presentation/note_form/widgets/add_tag_tile.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';

class TagList extends StatelessWidget {
  const TagList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<NoteFormBloc, NoteFormState>(
      listenWhen: (p, c) => p.note.tags.isFull != c.note.tags.isFull,
      listener: (context, state) {},
      child: Consumer<FormTags>(
        builder: (context, formTags, child) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: formTags.value.size,
            itemBuilder: (context, index) {
              return TagTile(
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

class TagTile extends HookWidget {
  final int index;

  const TagTile({required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tag = context.formTags.getOrElse(index, (_) => TagItem.emtpy());
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
            hintText: LocaleKeys.add_tags.tr(),
          ),
          onChanged: (value) {
            context.formTags = context.formTags.map(
              (ob) => tag == ob ? tag.copyWith(name: ItemString(value)) : ob,
            );
            context.read<NoteFormBloc>().add(
                  NoteFormEvent.tagsChanged(context.formTags),
                );
          },
          validator: (_) {
            return context.read<NoteFormBloc>().state.note.tags.value.fold(
                  (f) => null,
                  (tagList) => tagList[index].name.value.fold(
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
