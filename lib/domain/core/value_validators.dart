import 'package:dartz/dartz.dart';
import 'package:icecream_todo/domain/core/failures.dart';
import 'package:kt_dart/kt.dart';

Either<ValueFailure<String>, String> validateEmail(String value) {
  const String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  final RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(value)) {
    return left(
      ValueFailure.invalidEmail(failedValue: value),
    );
  } else {
    return right(value);
  }
}

Either<ValueFailure<String>, String> validatePassword(String value) {
  if (value.length < 6) {
    return left(
      ValueFailure.shortPassword(failedValue: value),
    );
  } else {
    return right(value);
  }
}

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length >= maxLength) {
    return left(
      ValueFailure.exceedingLength(failedValue: input, max: maxLength),
    );
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(
  String input,
) {
  if (input.isEmpty) {
    return left(
      ValueFailure.empty(failedValue: input),
    );
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
  KtList<T> input,
  int maxLength,
) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.listTooLong(
      failedValue: input,
      max: maxLength,
    ));
  }
}
