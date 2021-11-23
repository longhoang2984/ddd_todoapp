import 'package:dartz/dartz.dart';
import 'package:icecream_todo/domain/auth/auth_failure.dart';
import 'package:icecream_todo/domain/auth/user.dart';
import 'package:icecream_todo/domain/core/email_address.dart';
import 'package:icecream_todo/domain/core/password.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  });

  Future<Option<User>> getCurrentUser();
  Future<void> signOut();
}
