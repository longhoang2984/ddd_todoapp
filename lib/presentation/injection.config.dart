// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../application/auth/auth_bloc.dart' as _i11;
import '../application/auth/register_form/register_form_bloc.dart' as _i9;
import '../application/auth/sign_in_form/sign_in_form_bloc.dart' as _i10;
import '../application/note/note_actor/note_actor_bloc.dart' as _i7;
import '../application/note/note_watcher/note_watcher_bloc.dart' as _i8;
import '../domain/auth/i_auth_facade.dart' as _i3;
import '../domain/notes/i_note_repository.dart' as _i5;
import '../infrastructure/auth/parse_auth_facade.dart' as _i4;
import '../infrastructure/note/note_repository.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAuthFacade>(() => _i4.ParseAuthFacade());
  gh.lazySingleton<_i5.INoteRepository>(() => _i6.NoteRepository());
  gh.factory<_i7.NoteActorBloc>(
      () => _i7.NoteActorBloc(get<_i5.INoteRepository>()));
  gh.factory<_i8.NoteWatcherBloc>(
      () => _i8.NoteWatcherBloc(get<_i5.INoteRepository>()));
  gh.factory<_i9.RegisterFormBloc>(
      () => _i9.RegisterFormBloc(get<_i3.IAuthFacade>()));
  gh.factory<_i10.SignInFormBloc>(
      () => _i10.SignInFormBloc(get<_i3.IAuthFacade>()));
  gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(get<_i3.IAuthFacade>()));
  return get;
}
