import "package:flutter/material.dart";

class TextfielLogin extends StatelessWidget {
  const TextfielLogin({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.labelText,
    required this.icon, 
    this.obscureText,
    });

  final TextEditingController controller;
  final TextInputType keyboardType;
  final String labelText;
  final Icon icon;
  final bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText:obscureText ?? false,
      decoration: InputDecoration(
        labelText:labelText,
        border: OutlineInputBorder(),
        prefixIcon: icon,
        
      )

    );
  }
}