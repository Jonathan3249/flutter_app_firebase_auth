import 'package:flutter_app_firebase_auth/app/domain/models/repostories/authentication_repository.dart';
import 'package:flutter_app_firebase_auth/app/ui/pages/routes/routes.dart';
import 'package:flutter_meedu/meedu.dart';

class SplashController extends SimpleNotifier {
  final _authRepository = Get.find<AuthenticationRepository>();

  String? _routeName;
  String? get routeName => _routeName;

  //DEFINIMOS EL CONSTRUCTOR DE LA CLASE SPLASH CONTROLLER
  SplashController() {
    init();
  }

  void init() async {
    final user = await _authRepository.user;
    //SI NO SE ENCONTRO NINGUNA SESION ACTIVA DE FIREBASE AUTHENTICATION
    //Le indica si se encuentra un usuario activo, vaya a Home, en caso contrario, vaya a login
    _routeName = user != null ? Routes.home : Routes.login;
    notify();
  }
}
