import 'package:clean_arch_bloc/core/usecase/usecase.dart';

class UserSignUp
    implements
        UseCase<String,
            UserSignUpParams> {} //we create an interface for usecases will create a usecase interface in the core folder

class UserSignUpParams {
  //with single variable we can not pass multiple things so create a class and pass it
  final String email;
  final String password;
  final String name;

  UserSignUpParams(this.email, this.password, this.name);
}
