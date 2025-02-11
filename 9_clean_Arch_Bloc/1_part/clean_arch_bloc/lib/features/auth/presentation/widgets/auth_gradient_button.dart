import 'package:clean_arch_bloc/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  final String buttonText;
  const AuthGradientButton({super.key,
  required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container( //for elevtaed button we do not have the gradient property so we wrapped in the container widget 
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          AppPallete.gradient1, 
          AppPallete.gradient2
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight),
        borderRadius: BorderRadius.circular(7)
      ),
      
      child: ElevatedButton(
        onPressed: (){
          
      }, 
      style: ElevatedButton.styleFrom(
        fixedSize: Size(395, 55),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent
      ),
      child: Text(buttonText, style: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600
      ),),),
    );
  }
}