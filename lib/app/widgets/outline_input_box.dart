import 'package:flutter/material.dart';

class OutlineInputBox extends StatelessWidget {
  const OutlineInputBox(
      {super.key,
      required this.label,
      required this.hint,
      required this.prefixIcon,
      this.controller});

  final String label;
  final String hint;
  final IconData prefixIcon;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: Theme.of(context).textTheme.bodyMedium,
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon),
          hintText: hint,
          hintStyle: Theme.of(context)
              .textTheme
              .labelSmall
              ?.copyWith(color: Colors.black45),
          label: Text(
            label,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).primaryColor)),
          focusColor: Theme.of(context).primaryColor,
          border: OutlineInputBorder()),
    );
  }
}
