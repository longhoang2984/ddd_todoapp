import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icecream_todo/application/auth/auth_bloc.dart';
import 'package:icecream_todo/application/note/note_actor/note_actor_bloc.dart';
import 'package:icecream_todo/application/note/note_watcher/note_watcher_bloc.dart';
import 'package:icecream_todo/presentation/home/widgets/notes_body.dart';
import 'package:icecream_todo/presentation/injection.dart';
import 'package:icecream_todo/presentation/routes/router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<NoteWatcherBloc>()
              ..add(const NoteWatcherEvent.watchAllStarted()),
          ),
          BlocProvider(
            create: (context) => getIt<NoteActorBloc>(),
          ),
          BlocProvider(
            create: (_) => getIt<AuthBloc>(),
          ),
        ],
        child: MultiBlocListener(
          listeners: [
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                state.map(
                  initial: (_) {},
                  unauthenticated: (_) {
                    context.router.replace(const SignInPageRoute());
                  },
                  authenticated: (_) {},
                );
              },
            ),
            BlocListener<NoteActorBloc, NoteActorState>(
              listener: (context, state) {},
            ),
          ],
          child: const NotesList(),
        ),
      ),
    );
  }
}
