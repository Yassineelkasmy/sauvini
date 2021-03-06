import 'package:auto_route/auto_route.dart';
import 'package:sauvini/presentation/pharmacist/home/screens/user_check.dart';
import 'package:sauvini/presentation/pharmacist/login/screens/login.dart';
import 'package:sauvini/presentation/pharmacist/login/screens/sign_up.dart';
import 'package:sauvini/presentation/splash/screens/splash.dart';
import 'package:sauvini/shared/screens/welcome.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SplashScreen, initial: true),
  AutoRoute(page: WelcomeScreen),
  AutoRoute(page: UserCheckScreen),
  AutoRoute(page: PLoginScreen),
  AutoRoute(page: PSignUpScreen),
])
class $AppRouter {}
