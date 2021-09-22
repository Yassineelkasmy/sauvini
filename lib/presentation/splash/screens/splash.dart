import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sauvini/application/auth/bloc/auth_bloc.dart';
import 'package:sauvini/presentation/routes/router.gr.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) =>
              AutoRouter.of(context).replace(UserCheckScreenRoute()),
          unauthenticated: (_) =>
              AutoRouter.of(context).push(WelcomeScreenRoute()),
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
