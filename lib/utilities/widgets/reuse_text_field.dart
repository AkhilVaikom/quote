import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:quotation/constants/constants.dart';
import 'package:quotation/constants/function_constants.dart';

class ReuseTextField extends StatefulWidget {
  ReuseTextField(
      {required this.hintText,
      required this.prefixIcon,
      required this.controller,
      required this.validate,
      required this.textName,
      Key? key})
      : super(key: key);
  final String hintText;
  final IconData prefixIcon;
  bool validate;
  final TextEditingController controller;
  Enum textName;

  @override
  State<ReuseTextField> createState() => _ReuseTextFieldState();
}

class _ReuseTextFieldState extends State<ReuseTextField> {
  IconData suffixIcon = Icons.visibility_outlined;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontSize: 18),
      keyboardType: widget.textName == textField.number
          ? TextInputType.number
          : TextInputType.text,
      obscureText: widget.textName == textField.password ? true : false,
      decoration: InputDecoration(
          hintText: widget.hintText,
          suffixIcon: widget.textName == textField.password
              ? Icon(suffixIcon, color: Colors.grey)
              : const Text(""),
          prefixIcon: Icon(widget.prefixIcon, size: 30, color: Colors.grey),
          border: textOutlineBorder(),
          enabledBorder: textOutlineBorder(),
          focusedBorder: textOutlineBorder()),
    );
  }
}
