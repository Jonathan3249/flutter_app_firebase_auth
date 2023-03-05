import 'package:flutter_app_firebase_auth/app/domain/models/repostories/authentication_repository.dart';
import 'package:flutter_meedu/meedu.dart';

class SplashController {
  final _authRepository = Get.find<AuthenticationRepository>();

  //DEFINIMOS EL CONSTRUCTOR DE LA CLASE SPLASH CONTROLLER
  SplashController() {
    init();
  }

  void init() async {
    final user = await _authRepository.user;
    //SI NO SE ENCONTRO NINGUNA SESION ACTIVA DE FIREBASE AUTHENTICATION
    if (user != null) {
      print("Se encontro un usuario");
    } else {
      print("No se encontro algun usuario");
    }
  }
}
