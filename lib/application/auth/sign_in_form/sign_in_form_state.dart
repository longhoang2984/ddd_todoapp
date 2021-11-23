part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required EmailAddress emailAddress,
    required Password password,
    required bool showErrorMessage,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailOrSuccess,
  }) = _SignInFormState;

  factory SignInFormState.initital() => SignInFormState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        isSubmitting: false,
        showErrorMessage: false,
        authFailOrSuccess: none(),
      );
}
