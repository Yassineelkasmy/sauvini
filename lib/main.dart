import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sauvini/presentation/core/app_widget.dart';
import 'injection.dart';
import 'package:injectable/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureInjection(Environment.prod);
  runApp(const AppWidget());
}
