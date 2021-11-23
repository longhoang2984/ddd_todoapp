import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icecream_todo/domain/auth/auth_failure.dart';
import 'package:icecream_todo/domain/auth/i_auth_facade.dart';
import 'package:icecream_todo/domain/core/email_address.dart';
import 'package:icecream_todo/domain/core/password.dart';
import 'package:injectable/injectable.dart';

part 'register_form_bloc.freezed.dart';
part 'register_form_event.dart';
part 'register_form_state.dart';

@injectable
class RegisterFormBloc extends Bloc<RegisterFormEvent, RegisterFormState> {
  final IAuthFacade _authFacade;

  RegisterFormBloc(this._authFacade) : super(RegisterFormState.initital()) {
    on<RegisterFormEvent>(
      _onEventChanged,
      transformer: sequential(),
    );
  }

  Future<void> _onEventChanged(
    RegisterFormEvent event,
    Emitter<RegisterFormState> emit,
  ) async {
    await event.map(
      emailChanged: (e) {
        emit(
          state.copyWith(
            emailAddress: EmailAddress(e.emailStr),
            showErrorMessage: false,
            authFailOrSuccess: none(),
          ),
        );
      },
      passwordChanged: (e) {
        emit(state.copyWith(
          password: Password(e.passwordStr),
          showErrorMessage: false,
          authFailOrSuccess: none(),
        ));
      },
      register: (e) async {
        Either<AuthFailure, Unit>? failureOrSuccess;
        final isValidEmail = state.emailAddress.isValid();
        final isValidPassword = state.password.isValid();

        if (isValidEmail && isValidPassword) {
          emit(state.copyWith(
            isSubmitting: true,
            showErrorMessage: false,
            authFailOrSuccess: none(),
          ));

          failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
            email: state.emailAddress,
            password: state.password,
          );

          emit(state.copyWith(
            isSubmitting: false,
            authFailOrSuccess: some(failureOrSuccess),
          ));

          return;
        }

        return emit(state.copyWith(
          isSubmitting: false,
          showErrorMessage: true,
          authFailOrSuccess: optionOf(failureOrSuccess),
        ));
      },
    );
  }
}
