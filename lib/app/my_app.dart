import 'package:flutter/material.dart';
import 'package:flutter_app_firebase_auth/app/ui/pages/routes/app_routes.dart';
import 'ui/pages/routes/routes.dart';

import 'package:flutter_meedu/ui.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Autenticacion Firebase",
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      navigatorKey: router.navigatorKey,
      navigatorObservers: [
        router.observer,
      ],
      routes: appRoutes,
    );
  }
}
