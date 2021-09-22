import 'package:dartz/dartz.dart';
import 'package:sauvini/domain/auth/auth_failure.dart';
import 'package:sauvini/domain/auth/user.dart';
import 'package:sauvini/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
