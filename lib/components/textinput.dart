import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  InputField(
      {required this.displaytxt,
      required this.hidetxt,
      required this.borderRadius,
      this.borderColor,
      required this.contrlr,
      super.key});

  String displaytxt;
  double borderRadius;
  Color? borderColor;
  bool hidetxt;
  TextEditingController contrlr;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.hidetxt,
      controller: widget.contrlr,
      decoration: InputDecoration(
        hintText: widget.displaytxt,
        hintStyle: const TextStyle(color: Color.fromARGB(118, 0, 0, 0)),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: widget.borderColor ?? Colors.white),
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
      ),
    );
  }
}
