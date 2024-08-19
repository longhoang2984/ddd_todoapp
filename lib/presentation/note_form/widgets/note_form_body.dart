import 'dart:ui' as ui;

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hud/flutter_hud.dart';
import 'package:icecream_todo/application/note/note_form/note_form_bloc.dart';
import 'package:icecream_todo/gen/assets.gen.dart';
import 'package:icecream_todo/gen/colors.gen.dart';
import 'package:icecream_todo/generated/locale_keys.g.dart';
import 'package:icecream_todo/presentation/core/gradient_view.dart';
import 'package:icecream_todo/presentation/core/utils/base_text_style.dart';
import 'package:icecream_todo/presentation/core/utils/show_error.dart';
import 'package:icecream_todo/presentation/note_form/widgets/add_sub_notes_tile.dart';
import 'package:icecream_todo/presentation/note_form/widgets/add_tag_tile.dart';
import 'package:icecream_todo/presentation/note_form/widgets/note_title_field.dart';
import 'package:icecream_todo/presentation/note_form/widgets/sub_note_list.dart';
import 'package:icecream_todo/presentation/note_form/widgets/tag_list.dart';
import 'package:provider/provider.dart';

class NoteFormBody extends StatelessWidget {
  const NoteFormBody({Key? key, this.onNoteChanged}) : super(key: key);
  final Function()? onNoteChanged;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NoteFormBloc, NoteFormState>(
      listenWhen: (p, c) =>
          p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
          () => {},
          (either) {
            either.fold(
              (failure) {
                failure.maybeMap(
                  errorFromServer: (err) {
                    showError(context, err.msg);
                  },
                  orElse: () {
                    showError(
                      context,
                      LocaleKeys.some_thing_wrong.tr(),
                    );
                  },
                );
              },
              (_) {
                final callBack = onNoteChanged;
                if (callBack != null) {
                  callBack();
                }
                context.router.pop();
              },
            );
          },
        );
      },
      buildWhen: (p, c) =>
          p.isSaving != c.isSaving || p.isEditing != c.isEditing,
      builder: (context, state) {
        return WidgetHUD(
          showHUD: state.isSaving,
          hud: HUD(
            progressIndicator: const CircularProgressIndicator(
              color: ColorName.primary,
            ),
          ),
          builder: (BuildContext context, Widget? child) {
            return MultiProvider(
              providers: [
                ChangeNotifierProvider(
                  create: (_) => FormTags(),
                ),
                ChangeNotifierProvider(
                  create: (_) => FormSubNotes(),
                ),
              ],
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        top: 70.0,
                        left: 48.0,
                      ),
                      width: double.infinity,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              context.router.pop();
                            },
                            child: Assets.images.icBack.image(
                              height: 16.0,
                            ),
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            state.isEditing
                                ? LocaleKeys.edit_note
                                : LocaleKeys.add_note,
                            style: BaseTextStyle.style(
                              style: FontStyle.extrabold,
                              fontSize: 18.0,
                            ),
                          ).tr(),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Container(
                              padding: const EdgeInsets.only(
                                top: 10.0,
                                left: 48.0,
                                bottom: 40.0,
                                right: 8.0,
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: const [
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    NoteTitleField(),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    TagList(),
                                    AddTagsTile(),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    SubNoteList(),
                                    AddSubNotesTile(),
                                    SizedBox(
                                      height: 80.0,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned.directional(
                            bottom: 0.0,
                            start: 48.0,
                            end: 0,
                            textDirection: ui.TextDirection.ltr,
                            child: SizedBox(
                              width: double.infinity,
                              height: 64.0,
                              child: state.isEditing
                                  ? _editState(context)
                                  : _addState(context),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _addState(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<NoteFormBloc>().add(const NoteFormEvent.save());
      },
      child: Row(
        children: [
          Expanded(
            child: getLinearGradientView(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  bottom: 20.0,
                  left: 24.0,
                  right: 16.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        LocaleKeys.save,
                        style: BaseTextStyle.style(
                          color: ColorName.tertiaryWhite,
                        ),
                      ).tr(),
                    ),
                    Assets.images.icSave.image(
                      height: 24.0,
                      color: ColorName.tertiaryWhite,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _editState(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () =>
                context.read<NoteFormBloc>().add(const NoteFormEvent.save()),
            child: getLinearGradientView(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  bottom: 20.0,
                  left: 24.0,
                  right: 16.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        LocaleKeys.save,
                        style: BaseTextStyle.style(
                          color: ColorName.tertiaryWhite,
                        ),
                      ).tr(),
                    ),
                    Assets.images.icSave.image(
                      height: 24.0,
                      color: ColorName.tertiaryWhite,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: GestureDetector(
            onTap: () =>
                context.read<NoteFormBloc>().add(const NoteFormEvent.delete()),
            child: getLinearGradientView(
              colors: [
                ColorName.gradientErrorFirst,
                ColorName.gradientErrorSecond,
              ],
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  bottom: 20.0,
                  left: 24.0,
                  right: 16.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        LocaleKeys.delete,
                        style: BaseTextStyle.style(
                          color: ColorName.tertiaryWhite,
                        ),
                      ).tr(),
                    ),
                    Assets.images.icDelete.image(
                      height: 24.0,
                      color: ColorName.tertiaryWhite,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
