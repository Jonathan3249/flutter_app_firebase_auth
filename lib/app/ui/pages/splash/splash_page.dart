import 'package:flutter/material.dart';
import 'package:flutter_app_firebase_auth/app/ui/pages/splash/splash_controller.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:flutter_meedu/ui.dart';

final spalshProvider = SimpleProvider(
  (_) => SplashController(),
);

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderListener<SplashController>(
      provider: spalshProvider,
      onChange: (_, controller) {
        final routeName = controller.routeName;
        if (routeName != null) {
          router.pushReplacementNamed(routeName);
        }
      },
      builder: (_, __) {
        return const Scaffold();
      },
    );
  }
}
