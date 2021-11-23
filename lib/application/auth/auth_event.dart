part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequested() = _AuthCheckRequest;
  const factory AuthEvent.logout() = _LogOut;
}
