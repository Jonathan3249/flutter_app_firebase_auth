import 'package:flutter/widgets.dart' show Widget, BuildContext;
import 'package:flutter_app_firebase_auth/app/ui/pages/routes/routes.dart';
import 'package:flutter_app_firebase_auth/app/ui/pages/splash/splash_page.dart';

Map<String, Widget Function(BuildContext)> get appRoutes =>
    {Routes.splash: (_) => const SplashPage()};
