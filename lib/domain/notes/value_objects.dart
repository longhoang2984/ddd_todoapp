import 'package:dartz/dartz.dart';
import 'package:icecream_todo/domain/core/failures.dart';
import 'package:icecream_todo/domain/core/value_objects.dart';
import 'package:icecream_todo/domain/core/value_validators.dart';
import 'package:kt_dart/kt.dart';

class NoteTitle extends ValueObject<String, String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 256;

  factory NoteTitle(String input) {
    return NoteTitle._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const NoteTitle._(this.value);
}

class ItemString extends ValueObject<String, String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 100;

  factory ItemString(String input) {
    return ItemString._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const ItemString._(this.value);
}

class Notes<T> extends ValueObject<KtList<T>, KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const maxLength = 10;

  factory Notes(KtList<T> input) {
    return Notes._(
      validateMaxListLength(input, maxLength),
    );
  }

  const Notes._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}

class Tags<T> extends ValueObject<KtList<T>, KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const maxLength = 10;

  factory Tags(KtList<T> input) {
    return Tags._(
      validateMaxListLength(input, maxLength),
    );
  }

  const Tags._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}
