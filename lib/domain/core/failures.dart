import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

abstract class Failure extends Equatable {
  @override
  List<Object?> get props => [];
}

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int max,
  }) = ExceedingLength;
  const factory ValueFailure.empty({
    required T failedValue,
  }) = Empty;
  const factory ValueFailure.multiline({
    required T failedValue,
  }) = Multiline<T>;
  const factory ValueFailure.listTooLong({
    required T failedValue,
    required int max,
  }) = ListTooLong<T>;
}
