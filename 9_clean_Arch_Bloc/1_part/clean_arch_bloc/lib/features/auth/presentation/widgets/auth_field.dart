//widgets will have all repeating element here 
//auth field, for receiving information like name, password etc.
import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool isObscureText;
  const AuthField({
  super.key,
  required this.hintText,
  required this.controller,
  this.isObscureText=false});

  @override
  Widget build(BuildContext context) {
    return TextFormField( //field decoration can be used multiple time, authField is only accessible to auth page so we directly make changes to theme file so it will be accessible everywhere
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
      ),

      validator: (value){ //all validations are getting checked here
        if(value!.isEmpty){
          return "$hintText is missing ";
        } 
        return null; //there is no error 
      },
      obscureText: isObscureText,
    );
  }
}