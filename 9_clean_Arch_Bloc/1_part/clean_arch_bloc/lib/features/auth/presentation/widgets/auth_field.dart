//widgets will have all repeating element here 
//auth field, for receiving information like name, password etc.
import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String hintText;
  const AuthField({
  super.key,
  required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField( //field decoration can be used multiple time, authField is only accessible to auth page so we directly make changes to theme file so it will be accessible everywhere
      decoration: InputDecoration(
        hintText: hintText,
      ),
    );
  }
}