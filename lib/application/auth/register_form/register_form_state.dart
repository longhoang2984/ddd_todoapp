part of 'register_form_bloc.dart';

@freezed
class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState({
    required EmailAddress emailAddress,
    required Password password,
    required bool showErrorMessage,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailOrSuccess,
  }) = _RegisterFormState;

  factory RegisterFormState.initital() => RegisterFormState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        isSubmitting: false,
        showErrorMessage: false,
        authFailOrSuccess: none(),
      );
}
