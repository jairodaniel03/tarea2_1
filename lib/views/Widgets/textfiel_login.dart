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
        
      style: TextStyle(color: Colors.white70),
      controller: controller,
      keyboardType: keyboardType,
      obscureText:obscureText ?? false,
      decoration: InputDecoration(
        labelText:labelText, 
        labelStyle: TextStyle(
          color: Colors.white70,
          fontSize: 16,
        ),
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white70, width: 2.0),
        ),
        prefixIcon: icon , 
        prefixIconColor: Colors.white70, 
        
      )

    );
  }
}