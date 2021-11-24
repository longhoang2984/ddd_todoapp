import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:icecream_todo/application/note/note_watcher/note_watcher_bloc.dart';
import 'package:icecream_todo/gen/assets.gen.dart';
import 'package:icecream_todo/gen/colors.gen.dart';
import 'package:icecream_todo/generated/locale_keys.g.dart';
import 'package:icecream_todo/presentation/core/utils/base_text_style.dart';

class NoteStatus extends HookWidget {
  NoteStatus({Key? key, this.onNoteStatusChanged}) : super(key: key);
  final Function(bool)? onNoteStatusChanged;

  final _debouncer = Debouncer(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    final toggleState = useState(false);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          InkResponse(
            splashColor: Colors.transparent,
            splashFactory: NoSplash.splashFactory,
            highlightColor: Colors.transparent,
            onTap: () {
              context.read<NoteWatcherBloc>().state.maybeMap(
                loadInProgress: (_) {
                  return;
                },
                orElse: () {
                  toggleState.value = !toggleState.value;
                  _debouncer.run(
                    () {
                      context.read<NoteWatcherBloc>().add(
                            toggleState.value
                                ? const NoteWatcherEvent
                                    .watchUncompletedStarted()
                                : const NoteWatcherEvent.watchAllStarted(),
                          );
                      final callBack = onNoteStatusChanged;
                      if (callBack != null) {
                        callBack(toggleState.value);
                      }
                    },
                  );
                },
              );
            },
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 250),
              transitionBuilder: (child, animation) => FadeTransition(
                opacity: animation,
                child: child,
              ),
              child: (toggleState.value
                      ? Assets.images.icChecked
                      : Assets.images.icUncheck)
                  .image(
                height: 24.0,
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            LocaleKeys.only_uncompleted.tr(),
            style: BaseTextStyle.style(
              style: FontStyle.bold,
              color: ColorName.tertiaryMedium,
              fontSize: 15.0,
            ),
          )
        ],
      ),
    );
  }
}

class Debouncer {
  final int milliseconds;
  Timer? _timer;

  Debouncer({required this.milliseconds});

  void run(VoidCallback action) {
    if (null != _timer) {
      _timer?.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
