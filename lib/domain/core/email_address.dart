import 'package:dartz/dartz.dart';
import 'package:icecream_todo/domain/core/failures.dart';
import 'package:icecream_todo/domain/core/value_objects.dart';
import 'package:icecream_todo/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String, String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      value: validateEmail(input),
    );
  }

  const EmailAddress._({required this.value});

  @override
  String toString() => 'EmailAddress($value)';
}
