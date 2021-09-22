import 'package:sauvini/presentation/core/main_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:sauvini/presentation/routes/router.gr.dart';

Widget mainMaterialApp({required AppRouter router}) => MaterialApp.router(
      routeInformationParser: router.defaultRouteParser(),
      routerDelegate: router.delegate(),
      title: "FasTalab Manager",
      builder: (context, child) {
        return MediaQuery(
          child: SafeArea(child: child!),
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
        );
      },
      debugShowCheckedModeBanner: false,
      theme: mainThemeData(),
      themeMode: ThemeMode.light,
    );
