import 'package:sauvini/domain/core/failures.dart';

class UnexpectedValueFailure extends Error {
  final ValueFailure valueFailure;
  UnexpectedValueFailure({required this.valueFailure});

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation was $valueFailure');
  }
}
