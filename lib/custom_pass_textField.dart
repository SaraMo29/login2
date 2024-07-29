import 'package:flutter/material.dart';

class CustomPassTextfield extends StatelessWidget {
  final String label;
  final IconData prefixIcon;
  final String hintText;
  final TextEditingController controller;
  final bool passtToggle;
  final VoidCallback onToggle;
  const CustomPassTextfield({
    super.key,
    required this.label,
    required this.prefixIcon,
    required this.hintText,
    required this.controller,
    required this.passtToggle,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: passtToggle,
      decoration: InputDecoration(
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          labelText: label,
          prefixIcon: Icon(prefixIcon),
          icon: IconButton(
            icon: Icon(
              passtToggle ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: onToggle,
          )),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your password';
        } else if (value.length < 8) {
          return 'please enter at least 8 charachter';
        }
        return null;
      },
      autovalidateMode: AutovalidateMode.always,
    );
  }
}
