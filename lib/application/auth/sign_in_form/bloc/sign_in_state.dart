part of 'sign_in_bloc.dart';

@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState({
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
    required Option<UserType> userTypeOption,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
        userTypeOption: none(),
      );
}
