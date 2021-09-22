// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:flutter/widgets.dart' as _i8;

import '../../shared/screens/welcome.dart' as _i4;
import '../pharmacist/home/screens/user_check.dart' as _i5;
import '../pharmacist/login/screens/login.dart' as _i6;
import '../pharmacist/login/screens/sign_up.dart' as _i7;
import '../splash/screens/splash.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.SplashScreen());
    },
    WelcomeScreenRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.WelcomeScreen());
    },
    UserCheckScreenRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.UserCheckScreen());
    },
    PLoginScreenRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.PLoginScreen());
    },
    PSignUpScreenRoute.name: (routeData) {
      final args = routeData.argsAs<PSignUpScreenRouteArgs>(
          orElse: () => const PSignUpScreenRouteArgs());
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.PSignUpScreen(key: args.key));
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i1.RouteConfig(WelcomeScreenRoute.name, path: '/welcome-screen'),
        _i1.RouteConfig(UserCheckScreenRoute.name, path: '/user-check-screen'),
        _i1.RouteConfig(PLoginScreenRoute.name, path: '/p-login-screen'),
        _i1.RouteConfig(PSignUpScreenRoute.name, path: '/p-sign-up-screen')
      ];
}

class SplashScreenRoute extends _i1.PageRouteInfo<void> {
  const SplashScreenRoute() : super(name, path: '/');

  static const String name = 'SplashScreenRoute';
}

class WelcomeScreenRoute extends _i1.PageRouteInfo<void> {
  const WelcomeScreenRoute() : super(name, path: '/welcome-screen');

  static const String name = 'WelcomeScreenRoute';
}

class UserCheckScreenRoute extends _i1.PageRouteInfo<void> {
  const UserCheckScreenRoute() : super(name, path: '/user-check-screen');

  static const String name = 'UserCheckScreenRoute';
}

class PLoginScreenRoute extends _i1.PageRouteInfo<void> {
  const PLoginScreenRoute() : super(name, path: '/p-login-screen');

  static const String name = 'PLoginScreenRoute';
}

class PSignUpScreenRoute extends _i1.PageRouteInfo<PSignUpScreenRouteArgs> {
  PSignUpScreenRoute({_i8.Key? key})
      : super(name,
            path: '/p-sign-up-screen', args: PSignUpScreenRouteArgs(key: key));

  static const String name = 'PSignUpScreenRoute';
}

class PSignUpScreenRouteArgs {
  const PSignUpScreenRouteArgs({this.key});

  final _i8.Key? key;
}
