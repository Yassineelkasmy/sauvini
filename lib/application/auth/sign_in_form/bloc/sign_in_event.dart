part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.signInWithGooglePressed() = SignInWithGooglePressed;
  const factory SignInEvent.userTypeChanged(UserType userType) =
      UserTypeChanged;
}
