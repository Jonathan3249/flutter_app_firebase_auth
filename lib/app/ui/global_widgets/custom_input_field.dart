import 'package:flutter/material.dart';

class CustomInputField extends StatefulWidget {
  final void Function(String)? onChanged;
  final String label;
  final TextInputType? inputType;
  final bool isPassword;
  const CustomInputField(
      {super.key,
      this.onChanged,
      required this.label,
      this.inputType,
      this.isPassword = false});

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  late bool _obscureText;
  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _obscureText,
      keyboardType: widget.inputType,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        labelText: widget.label,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
