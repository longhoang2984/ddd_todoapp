import 'package:dartz/dartz.dart';
import 'package:icecream_todo/domain/core/failures.dart';
import 'package:icecream_todo/domain/core/value_objects.dart';
import 'package:icecream_todo/domain/core/value_validators.dart';

class Password extends ValueObject<String, String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      value: validatePassword(input),
    );
  }

  const Password._({required this.value});

  @override
  String toString() => 'Password($value)';
}
