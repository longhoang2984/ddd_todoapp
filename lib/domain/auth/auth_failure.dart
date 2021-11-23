import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError({
    @Default('Something went wrong') String? message,
  }) = ServerError;
  const factory AuthFailure.emailExisted() = EmailExisted;
  const factory AuthFailure.invalidEmailAndPassword() = InvalidEmailAndPassword;
}
