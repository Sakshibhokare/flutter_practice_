import 'package:clean_arch_bloc/core/error/failure.dart';
import 'package:clean_arch_bloc/core/usecase/usecase.dart';
import 'package:clean_arch_bloc/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/src/either.dart';

class UserSignUp implements UseCase<String, UserSignUpParams> {
  final AuthRepository authRepository;
  const UserSignUp(this.authRepository);
  @override
  Future<Either<Failure, String>> call(UserSignUpParams params) async {
    return authRepository.signUpWithEmailPassword(
        name: params.name, email: params.email, password: params.password);
  }
} //we create an interface for usecases will create a usecase interface in the core folder

class UserSignUpParams {
  //with single variable we can not pass multiple things so create a class and pass it
  final String email;
  final String password;
  final String name;

  UserSignUpParams(this.email, this.password, this.name);
}
