import 'package:flutter/material.dart';
import 'package:flutter_app_firebase_auth/app/ui/global_widgets/custom_input_field.dart';

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
              //widgets globales definidos
              CustomInputField(
                label: "Name",
                onChanged: (text) {},
              ),
              const SizedBox(
                height: 15,
              ),
              CustomInputField(
                label: "Last Name",
                onChanged: (text) {},
              ),
              const SizedBox(
                height: 15,
              ),
              CustomInputField(
                label: "E-mail",
                //Definir el teclado que se muestre para correo electronico.
                inputType: TextInputType.emailAddress,
                onChanged: (text) {},
              ),
              const SizedBox(
                height: 15,
              ),
              CustomInputField(
                label: "Password",
                //Oculta el contenido del password
                isPassword: true,
                onChanged: (text) {},
              ),
              const SizedBox(
                height: 15,
              ),
              CustomInputField(
                label: "Verification Password",
                isPassword: true,
                onChanged: (text) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
