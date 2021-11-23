import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icecream_todo/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(const AuthState.initial()) {
    on<AuthEvent>(
      _onGetRootView,
      transformer: sequential(),
    );
  }

  Future<void> _onGetRootView(
    AuthEvent event,
    Emitter<AuthState> emit,
  ) async {
    await event.map(authCheckRequested: (e) async {
      final user = await _authFacade.getCurrentUser();
      emit(user.fold(
        () => const AuthState.unauthenticated(),
        (_) => const AuthState.authenticated(),
      ));
    }, logout: (e) async {
      await _authFacade.signOut();
      emit(const AuthState.unauthenticated());
    });
  }
}
