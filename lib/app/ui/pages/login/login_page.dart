import 'package:flutter/material.dart';
import 'package:flutter_app_firebase_auth/app/ui/pages/routes/routes.dart';
import 'package:flutter_meedu/ui.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () => router.pushReplacementNamed(Routes.register),
                child: const Text("Sign Up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
