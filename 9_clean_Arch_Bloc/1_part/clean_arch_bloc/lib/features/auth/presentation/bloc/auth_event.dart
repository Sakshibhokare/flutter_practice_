part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

final class AuthSignUp extends AuthEvent {
  //get params from users
  final String email;
  final String password;
  final String name;

  AuthSignUp({required this.email, required this.password, required this.name});
}
