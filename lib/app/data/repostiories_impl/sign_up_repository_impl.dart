import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app_firebase_auth/app/domain/inputs/sign_up.dart';
import 'package:flutter_app_firebase_auth/app/domain/models/repostories/sign_up_repository.dart';

class SignUpRepositoryImpl implements SignUpRepository {
  final FirebaseAuth _auth;
  SignUpRepositoryImpl(this._auth);

  @override
  Future<SignUpResponse> register(SignUpData data) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: data.email!,
        password: data.password!,
      );
      await userCredential.user!
          .updateDisplayName("${data.name}" "${data.lastname}");
      return SignUpResponse(error: null, user: userCredential.user!);
    } on FirebaseAuthException catch (e) {
      return SignUpResponse(error: e.code, user: null);
    }
  }
}
