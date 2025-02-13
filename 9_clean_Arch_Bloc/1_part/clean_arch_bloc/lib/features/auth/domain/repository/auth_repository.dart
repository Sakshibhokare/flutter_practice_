
//Abstract class vs abstract interface:
// Abstract class are use to provide the base class
// interfaces are use to define a set of methods that class should define 
import 'package:clean_arch_bloc/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository { //interface of class
//using fpdart library we can decide the return type of the class 
// Either: allows to decide the data type on failure and success, we will create a failure class and return here which can include status code or any information

    Future<Either<Failure, String>> signUpWithEmailPassword({
        required String name,
        required String email,
        required String password,
    });

    Future<Either<Failure, String>> loginUpWithEmailPassword({
        required String email,
        required String password,
    });
    //this is our entire interface for auth 
}