import 'package:flutter/material.dart';
import 'package:flutter_app_firebase_auth/app/ui/pages/splash/splash_controller.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  //CONTROLADOR PARA INDICAR SI EXISTE ALGUN USUARIO ACTIVO
  final _controller = SplashController();
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
