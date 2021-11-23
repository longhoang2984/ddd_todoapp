import 'package:dartz/dartz.dart';
import 'package:icecream_todo/domain/auth/auth_failure.dart';
import 'package:icecream_todo/domain/auth/i_auth_facade.dart';
import 'package:icecream_todo/domain/auth/user.dart';
import 'package:icecream_todo/domain/core/email_address.dart';
import 'package:icecream_todo/domain/core/password.dart';
import 'package:icecream_todo/infrastructure/auth/parse_user_mapper.dart';
import 'package:injectable/injectable.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

@LazySingleton(as: IAuthFacade)
class ParseAuthFacade implements IAuthFacade {
  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  }) async {
    final emailAddressStr = email.getOrCrash();
    final passwordStr = password.getOrCrash();
    final _parsse = ParseUser(emailAddressStr, passwordStr, emailAddressStr);
    final response = await _parsse.signUp();
    if (response.success) {
      return right(unit);
    } else if (response.error != null) {
      final error = response.error!;
      if (error.code == 203 || error.code == 202) {
        return left(const AuthFailure.emailExisted());
      } else {
        return left(AuthFailure.serverError(message: error.message));
      }
    } else {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  }) async {
    final emailAddressStr = email.getOrCrash();
    final passwordStr = password.getOrCrash();
    final _parsse = ParseUser(emailAddressStr, passwordStr, emailAddressStr);

    final response = await _parsse.login();
    if (response.success) {
      return right(unit);
    } else if (response.error != null) {
      return left(AuthFailure.serverError(message: response.error!.message));
    } else {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Option<User>> getCurrentUser() async {
    final ParseUser? currentUser = await ParseUser.currentUser() as ParseUser?;
    final User? user = currentUser?.toUser();
    if (currentUser == null ||
        currentUser.sessionToken == null ||
        user == null) {
      return none();
    }

    final ParseResponse? parseResponse =
        await ParseUser.getCurrentUserFromServer(currentUser.sessionToken!);
    if (parseResponse == null || !parseResponse.success) {
      await currentUser.logout();
      return none();
    }
    return some(user);
  }

  @override
  Future<void> signOut() async {
    final ParseUser? currentUser = await ParseUser.currentUser() as ParseUser?;
    await currentUser?.logout();
  }
}
