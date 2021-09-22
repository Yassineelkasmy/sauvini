import 'package:dartz/dartz.dart';
import 'package:sauvini/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLenght(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.exceedingLength(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(
  String input,
) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSinleLine(
  String input,
) {
  if (!input.contains('\n')) {
    return right(input);
  } else {
    return left(ValueFailure.multiline(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmailAddress(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 8) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  if (input.length >= 10) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPhoneNumber(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateName(String input) {
  const nameRegex = r"""[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]""";

  if (RegExp(nameRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidName(failedValue: input));
  }
}
