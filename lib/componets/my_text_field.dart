// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

/* 
Text Feild

A box where the user can type into
------------------------------------------------
To use this wdget we need:
- text cotroller (to access what the user typed)
- hint text (e.g "Enter your password")
-obsecure text (e.g true -> hides the pw **************)

 */
class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obsecureText;
  const MyTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obsecureText,
  }) : super(key: key);
  //  BUILD UI
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obsecureText,
      decoration: InputDecoration(
          // border when unselected
          enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.primary),
              borderRadius: BorderRadius.circular(12)),
          // border when selected
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.primary),
              borderRadius: BorderRadius.circular(12)),
          fillColor: Theme.of(context).colorScheme.secondary,
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.black)),
    );
  }
}
