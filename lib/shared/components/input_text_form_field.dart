import 'package:flutter/material.dart';

class InputTextField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final Function(String)? onChanged;
  final bool obscureText;
  final bool isVisibility;

  InputTextField(
      {required this.controller,
      required this.labelText,
      this.onChanged,
      this.obscureText = false,
      this.isVisibility = false});

  @override
  _InputTextFieldState createState() => _InputTextFieldState(
        obscureText: obscureText,
      );
}

class _InputTextFieldState extends State<InputTextField> {
  bool obscureText = false;

  _InputTextFieldState({
    this.obscureText = false,
  });

  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle:
            TextStyle(fontSize: 12.0, color: Theme.of(context).primaryColor),
        suffix: InkWell(
          onTap: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          child: widget.isVisibility
              ? Icon(
                  widget.obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Theme.of(context).primaryColor,
                )
              : Offstage(),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
      ),
      cursorColor: Theme.of(context).primaryColor,
      obscureText: widget.obscureText,
      onChanged: widget.onChanged,
    );
  }
}
