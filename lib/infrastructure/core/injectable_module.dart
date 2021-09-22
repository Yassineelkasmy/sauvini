import 'package:dio/dio.dart';
import 'package:sauvini/infrastructure/core/client.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:sauvini/constants.dart';

@module
abstract class InjectableModule {
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();

  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @Named("managers")
  Dio get managerClient => client(managerApiServiceBaseUrl);
}
