import 'dart:async';

import 'package:sauvini/domain/auth/i_auth_facade.dart';
import 'package:sauvini/domain/auth/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  AuthBloc(this._authFacade) : super(Initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(authCheckRequested: (e) async* {
      final userOtion = await _authFacade.getSignedInUser();
      yield userOtion.fold(() => const AuthState.unauthenticated(),
          (user) => AuthState.authenticated(user: user));
    }, signedOut: (e) async* {
      await _authFacade.signOut();
      yield const AuthState.unauthenticated();
    });
  }
}
