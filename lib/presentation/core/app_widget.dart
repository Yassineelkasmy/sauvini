import 'package:sauvini/application/auth/bloc/auth_bloc.dart';
import 'package:sauvini/presentation/core/main_material_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:sauvini/presentation/routes/router.gr.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../injection.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final routerKey = GlobalKey<NavigatorState>();

  final screenUtilKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter(routerKey);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: ScreenUtilInit(
        key: screenUtilKey,
        builder: () => mainMaterialApp(router: _appRouter),
      ),
    );
  }
}
