import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OutlineInputBox extends StatefulWidget {
  const OutlineInputBox(
      {super.key,
      required this.label,
      required this.hint,
      required this.prefixIcon,
      this.controller, this.passwordField = false, required this.keyboardType});

  final String label;
  final String hint;
  final IconData prefixIcon;
  final TextEditingController? controller;
  final bool passwordField;
  final TextInputType keyboardType;

  @override
  State<OutlineInputBox> createState() => _OutlineInputBoxState();
}

class _OutlineInputBoxState extends State<OutlineInputBox> {
  bool passSwitch = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      style: Theme.of(context).textTheme.bodyMedium,
      keyboardType: widget.keyboardType,
      obscureText: widget.passwordField ? passSwitch : false,
      decoration: InputDecoration(
          prefixIcon: Icon(widget.prefixIcon),
          suffixIcon: widget.passwordField ? IconButton(onPressed: (){setState(() {
            passSwitch = !passSwitch;
          });}, icon: Icon(passSwitch? CupertinoIcons.eye_fill : CupertinoIcons.eye_slash_fill)) : null,
          hintText: widget.hint,
          hintStyle: Theme.of(context)
              .textTheme
              .labelSmall
              ?.copyWith(color: Colors.black45),
          label: Text(
            widget.label,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).primaryColor)),
          focusColor: Theme.of(context).primaryColor,
          border: OutlineInputBorder()),
    );
  }
}
