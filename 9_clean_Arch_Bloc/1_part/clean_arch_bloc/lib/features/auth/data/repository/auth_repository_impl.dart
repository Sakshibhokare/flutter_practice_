import 'package:clean_arch_bloc/core/error/exceptions.dart';
import 'package:clean_arch_bloc/core/error/failure.dart';
import 'package:clean_arch_bloc/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:clean_arch_bloc/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepositoryImpl implements AuthRepository {
  //create a variable for data source
  final AuthRemoteDataSource
      remoteDataSource; //here we only dependent on the interface which mean we only get to know if this method or functionality is present or not

  const AuthRepositoryImpl(
      this.remoteDataSource); //here we will not use imp, to have a less dependency
  @override
  Future<Either<Failure, String>> loginUpWithEmailPassword(
      {required String email, required String password}) {
    // TODO: implement loginUpWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> signUpWithEmailPassword(
      {required String name,
      required String email,
      required String password}) async {
    try {
      final userid = await remoteDataSource.signUpWithEmailPassword(
          name: name, email: email, password: password);

      return right(userid); //
    } on ServerExceptions catch (e) {
      return left(Failure(e.message));
    }
  }
  // connecting this repository to the repository present in the domain layer
}
