import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app_firebase_auth/app/data/repostiories_impl/authentication_repository_impl.dart';
import 'package:flutter_app_firebase_auth/app/data/repostiories_impl/sign_up_repository_impl.dart';
import 'package:flutter_app_firebase_auth/app/domain/models/repostories/authentication_repository.dart';
import 'package:flutter_app_firebase_auth/app/domain/models/repostories/sign_up_repository.dart';
import 'package:flutter_meedu/meedu.dart';

void injectDependencies() {
  Get.lazyPut<AuthenticationRepository>(
    () => AuthenticacionRepositoryImpl(FirebaseAuth.instance),
  );
  Get.lazyPut<SignUpRepository>(
    () => SignUpRepositoryImpl(FirebaseAuth.instance),
  );
}
