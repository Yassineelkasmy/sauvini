import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.empty({
    required T failedValue,
  }) = Empty<T>;

  const factory ValueFailure.multiline({
    required T failedValue,
  }) = Multiline<T>;

  const factory ValueFailure.exceedingLength({
    required T failedValue,
  }) = ExceedingLength<T>;

  const factory ValueFailure.invalidEmailAddress({
    required T failedValue,
  }) = InvalidEmailAddress<T>;

  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;

  const factory ValueFailure.invalidName({
    required T failedValue,
  }) = InvalidName<T>;

  const factory ValueFailure.invalidPhoneNumber({
    required T failedValue,
  }) = InvalidPhoneNumber<T>;
}
