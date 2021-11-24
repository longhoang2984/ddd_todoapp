import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:icecream_todo/application/note/note_watcher/note_watcher_bloc.dart';
import 'package:icecream_todo/gen/colors.gen.dart';
import 'package:icecream_todo/generated/locale_keys.g.dart';
import 'package:icecream_todo/presentation/core/gradient_view.dart';
import 'package:icecream_todo/presentation/core/utils/base_text_style.dart';
import 'package:icecream_todo/presentation/home/widgets/note_list.dart';
import 'package:icecream_todo/presentation/home/widgets/note_status.dart';
import 'package:icecream_todo/presentation/routes/router.gr.dart';

class NoteBody extends HookWidget {
  const NoteBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final toggleState = useState(false);
    return Scaffold(
      backgroundColor: ColorName.tertiaryWhite,
      floatingActionButton: getLinearGradientView(
        radius: 6,
        colors: [
          ColorName.gradientSecondaryFirst,
          ColorName.gradientSecondarySecond,
        ],
        child: GestureDetector(
          onTap: () {
            context.router.push(
              NoteFormPageRoute(
                onNoteChanged: () => _onNoteChanged(context, toggleState.value),
              ),
            );
          },
          child: const SizedBox(
            height: 72.0,
            width: 72.0,
            child: Icon(
              Icons.add,
              size: 40.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(
          top: 70.0,
          bottom: 40.0,
          left: 48.0,
          right: 8.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.notes.tr(),
              style: BaseTextStyle.style(
                style: FontStyle.extrabold,
                fontSize: 40.0,
              ),
            ),
            NoteStatus(
              onNoteStatusChanged: (status) {
                toggleState.value = status;
              },
            ),
            NotesList(
              onNoteChanged: () => _onNoteChanged(context, toggleState.value),
            ),
          ],
        ),
      ),
    );
  }

  void _onNoteChanged(BuildContext context, bool isShowOnlyUncompleted) {
    return context.read<NoteWatcherBloc>().add(
          isShowOnlyUncompleted
              ? const NoteWatcherEvent.watchUncompletedStarted()
              : const NoteWatcherEvent.watchAllStarted(),
        );
  }
}
