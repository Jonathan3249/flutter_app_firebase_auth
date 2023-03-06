import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: double.infinity,
          color: Colors.transparent,
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    labelText: "Name", border: OutlineInputBorder()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
