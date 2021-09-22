import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
import 'package:sauvini/domain/auth/auth_failure.dart';
import 'package:flutter/foundation.dart';
import 'package:sauvini/domain/auth/i_auth_facade.dart';
import 'package:sauvini/domain/auth/user.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthFacade _authFacade;

  SignInBloc(this._authFacade) : super(SignInState.initial());

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    // yield* event.map(
    //   signInWithGooglePressed: (e) async* {
    //     yield state.copyWith(
    //       isSubmitting: true,
    //       authFailureOrSuccessOption: none(),
    //     );
    //     final failureOrSuccess = await _authFacade.signInWithGoogle();
    //     yield state.copyWith(
    //       isSubmitting: false,
    //       authFailureOrSuccessOption: some(failureOrSuccess),
    //     );
    //   },
    // );
  }
}
