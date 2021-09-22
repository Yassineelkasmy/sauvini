import 'package:sauvini/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:sauvini/domain/core/value_objects.dart';
import 'package:sauvini/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  EmailAddress._(this.value);

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }
}

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  Name._(this.value);

  factory Name(String input) {
    return Name._(validateName(input));
  }
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  Password._(this.value);

  factory Password(String input) {
    return Password._(validatePassword(input));
  }
}
