import 'package:clean_arch_bloc/features/auth/domain/usecases/user_sign_up.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'auth_event.dart';
part 'auth_state.dart';

//we have to call use cases in the bloc
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserSignUp
      _userSignUp; //keep this private so no one can create instance of it
  AuthBloc({
    required UserSignUp userSignUp,
  })  : _userSignUp = userSignUp,
        super(AuthInitial()) {
    on<AuthSignUp>((event, emit) async {
      final res = await _userSignUp(
          UserSignUpParams(event.email, event.password, event.name));
    });

    res.fold(
      (failure) => emit(AuthFailure(
        message: failure.message,
      )),
      (uid) => emit(AuthSuccess(uid)),
    );
  }

  get res => null;
}
