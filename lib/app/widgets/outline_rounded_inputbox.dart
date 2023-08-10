import 'package:flutter/material.dart';

class OutlineRoundedInputBox extends StatelessWidget {
  const OutlineRoundedInputBox(
      {super.key,
      required this.hint,
      required this.label,
      required this.controller});

  final String hint;
  final String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          label: Text(
            label,
            style: Theme.of(context).textTheme.labelSmall,
          ),
          hintText: hint,
          focusColor: Theme.of(context).primaryColor,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Theme.of(context).primaryColor)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
    );
  }
}
