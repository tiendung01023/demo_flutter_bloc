import 'package:demo_flutter_bloc/resources/colors.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final OutlineInputBorder _defaultTextFieldBoder = OutlineInputBorder(
    borderRadius: BorderRadius.zero,
    borderSide: BorderSide(color: MyColors.primary, width: 2),
  );

  final String? hintText;
  final TextEditingController? controller;
  final bool obscureText;

  TextFieldWidget({
    Key? key,
    this.hintText,
    this.controller,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: _defaultTextFieldBoder,
        focusedBorder: _defaultTextFieldBoder,
        hintText: hintText,
      ),
      cursorColor: MyColors.primary,
    );
  }
}
