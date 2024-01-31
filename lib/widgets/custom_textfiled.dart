// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:notes_app/constamt.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      this.hintText,
      this.inputType,
      this.onChanged,
      this.obscureText = false});
  Function(String)? onChanged;
  String? hintText;
  TextInputType? inputType;
  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kprimarycolor,

      obscureText: obscureText!,
      onChanged: onChanged,
      keyboardType: inputType,
      decoration: InputDecoration(
        hintText: hintText,hintStyle: TextStyle(color: kprimarycolor),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
             color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kprimarycolor,
          ),
          borderRadius: BorderRadius.circular(8)
        )
      ),
    );
  }
}
