import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icecream_todo/domain/auth/auth_failure.dart';
import 'package:icecream_todo/domain/auth/i_auth_facade.dart';
import 'package:icecream_todo/domain/core/email_address.dart';
import 'package:icecream_todo/domain/core/password.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initital()) {
    on<SignInFormEvent>(
      _onEventChanged,
      transformer: sequential(),
    );
  }

  Future<void> _onEventChanged(
    SignInFormEvent event,
    Emitter<SignInFormState> emit,
  ) async {
    await event.map(
      emailChanged: (e) {
        emit(
          state.copyWith(
            emailAddress: EmailAddress(e.emailStr),
            authFailOrSuccess: none(),
          ),
        );
      },
      passwordChanged: (e) {
        emit(
          state.copyWith(
            password: Password(e.passwordStr),
            authFailOrSuccess: none(),
          ),
        );
      },
      signIn: (e) async {
        Either<AuthFailure, Unit>? failureOrSuccess;
        final isValidEmail = state.emailAddress.isValid();
        final isValidPassword = state.password.isValid();

        if (isValidEmail && isValidPassword) {
          emit(
            state.copyWith(
              isSubmitting: true,
              authFailOrSuccess: none(),
            ),
          );

          failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
            email: state.emailAddress,
            password: state.password,
          );

          return emit(
            state.copyWith(
              isSubmitting: false,
              authFailOrSuccess: some(failureOrSuccess),
            ),
          );
        }

        return emit(
          state.copyWith(
            isSubmitting: false,
            showErrorMessage: true,
            authFailOrSuccess: none(),
          ),
        );
      },
    );
  }
}
