// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/bloc/auth_bloc.dart' as _i9;
import 'application/auth/sign_in_form/bloc/sign_in_bloc.dart' as _i8;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/core/injectable_module.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.factory<_i3.Dio>(() => injectableModule.managerClient,
      instanceName: 'managers');
  gh.lazySingleton<_i4.FirebaseAuth>(() => injectableModule.firebaseAuth);
  gh.lazySingleton<_i5.GoogleSignIn>(() => injectableModule.googleSignIn);
  gh.factory<_i6.IAuthFacade>(() =>
      _i7.FireBaseAuthFacade(get<_i4.FirebaseAuth>(), get<_i5.GoogleSignIn>()));
  gh.factory<_i8.SignInBloc>(() => _i8.SignInBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i9.AuthBloc>(() => _i9.AuthBloc(get<_i6.IAuthFacade>()));
  return get;
}

class _$InjectableModule extends _i10.InjectableModule {}
