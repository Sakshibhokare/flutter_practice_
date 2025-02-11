import 'package:clean_arch_bloc/core/theme/app_pallete.dart';
import 'package:clean_arch_bloc/features/auth/presentation/widgets/auth_field.dart';
import 'package:clean_arch_bloc/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';
// for each feature we need to create a folder with data domain and presentation 
class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  //we have created controllers to access the text user writing in the text field 
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();//we create a global key of type form state
  

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
          
            children: [
              Text('Sign Up', style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold
              ),),
          
              SizedBox(height: 30,),
              AuthField(hintText: 'Name', controller: nameController,),
              SizedBox(height: 15,),
              AuthField(hintText: 'Email', controller: emailController, ),
              SizedBox(height: 15,),
              AuthField(hintText: 'Password', controller: passwordController, isObscureText: true,),
              SizedBox(height: 20,),
              AuthGradientButton(buttonText: 'Sign Up',),
              SizedBox(height: 20,),
              RichText(text: TextSpan(
                text: "Already have an account? ",
                style: Theme.of(context).textTheme.titleMedium,
                children: [
                  TextSpan(
                    text: 'Sign In',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppPallete.gradient2,
                      fontWeight: FontWeight.bold
                    )
                  )
                ]
              ))
          
            ],
          ),
        ),
      ),
    );
  }
}