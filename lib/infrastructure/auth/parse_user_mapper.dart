import 'package:icecream_todo/domain/auth/user.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

extension ParseUserDomainX on ParseUser {
  User? toUser() {
    return objectId == null ? null : User(id: objectId!);
  }
}
