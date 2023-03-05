import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app_firebase_auth/app/domain/models/repostories/authentication_repository.dart';

class AuthenticacionRepositoryImpl implements AuthenticationRepository {
  final FirebaseAuth _auth;
  User? _user;

  final Completer<void> _completer = Completer();

  AuthenticacionRepositoryImpl(this._auth) {
    _init();
  }

  @override
  Future<User?> get user async {
    await _completer.future;
    return _user;
  }

  void _init() async {
    _auth.authStateChanges().listen((User? user) {
      if (!_completer.isCompleted) {
        _completer.complete();
      }
      _user = user;
    });
  }
}
