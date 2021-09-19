import 'package:flutter/material.dart';
import 'package:demo_flutter_bloc/extensions/responsive_extension.dart';

class TextFieldWidget extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final bool obscureText;

  const TextFieldWidget({
    Key? key,
    this.hintText,
    this.controller,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final OutlineInputBorder _defaultTextFieldBoder = OutlineInputBorder(
      borderRadius: BorderRadius.zero,
      borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 2),
    );
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: _defaultTextFieldBoder,
        focusedBorder: _defaultTextFieldBoder,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Theme.of(context).primaryColor.withOpacity(0.5),
        ),
      ),
      style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: 15.responsive(),
      ),
      cursorColor: Theme.of(context).primaryColor,
    );
  }
}
