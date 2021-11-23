import 'package:dartz/dartz.dart';
import 'package:icecream_todo/domain/core/errors.dart';
import 'package:icecream_todo/domain/core/failures.dart';

abstract class ValueObject<F, T> {
  const ValueObject();
  Either<ValueFailure<F>, T> get value;

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<F, T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';

  bool isValid() => value.isRight();

  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }
}
