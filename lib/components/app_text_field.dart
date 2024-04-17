import 'package:flutter/material.dart';

import '../styles/app_colors.dart';

class appTextField extends StatelessWidget {
  final String hint;
  const appTextField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        labelText: hint,
        labelStyle: const TextStyle(
          color: Colors.white,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        filled: true,
        fillColor: AppColors.fieldColor,
      ),
    );
  }
}
