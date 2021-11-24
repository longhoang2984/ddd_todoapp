import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:icecream_todo/application/note/note_form/note_form_bloc.dart';
import 'package:icecream_todo/gen/colors.gen.dart';
import 'package:icecream_todo/generated/locale_keys.g.dart';
import 'package:icecream_todo/presentation/core/utils/base_text_style.dart';
import 'package:icecream_todo/presentation/core/utils/under_line_text_field.dart';

class NoteTitleField extends HookWidget {
  const NoteTitleField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();
    return BlocListener<NoteFormBloc, NoteFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textController.text = state.note.title.getOrCrash();
      },
      child: TextFormField(
        controller: textController,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          hintText: LocaleKeys.enter_title.tr(),
          hintStyle: BaseTextStyle.style(
            fontSize: 36.0,
            style: FontStyle.extrabold,
            color: ColorName.contextualError.withAlpha(200),
          ),
          errorStyle: BaseTextStyle.style(
            style: FontStyle.dark,
            color: ColorName.contextualError,
            fontSize: 9.0,
          ),
          border: getUnderLineBorder(ColorName.tertiaryWhite),
          focusedBorder: getUnderLineBorder(ColorName.primary),
          errorBorder: getUnderLineBorder(ColorName.contextualError),
          enabledBorder: getUnderLineBorder(ColorName.tertiaryWhite),
        ),
        cursorColor: ColorName.tertiaryDark,
        style: BaseTextStyle.style(
          fontSize: 36.0,
          style: FontStyle.extrabold,
        ),
        onChanged: (value) => context.read<NoteFormBloc>().add(
              NoteFormEvent.titleChanged(value),
            ),
        validator: (_) =>
            context.read<NoteFormBloc>().state.note.title.value.fold(
                  (f) => f.maybeMap(
                    empty: (f) => 'Cannot be empty',
                    exceedingLength: (f) => 'Exceeding length max: ${f.max}',
                    orElse: () => null,
                  ),
                  (r) => null,
                ),
      ),
    );
  }
}
