// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../shared/screens/welcome.dart' as _i4;
import '../pharmacist/home/screens/user_check.dart' as _i5;
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
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i1.RouteConfig(WelcomeScreenRoute.name, path: '/welcome-screen'),
        _i1.RouteConfig(UserCheckScreenRoute.name, path: '/user-check-screen')
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
