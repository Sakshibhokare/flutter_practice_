//remote data source means data is coming from the APIs

//creating an interface for auth_remote_data_source

import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthRemoteDataSource {
  Future<String> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });

  Future<String> logInWithEmailPassword({
    required String email,
    required String password,
  });
}

//general class that will implement this interface
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  //this is the dependency injection: this will decrease the dependency and create the loosely coupled
  final SupabaseClient
      supabaseClient; //doing this will create a dependency, any time when we change the database we can simply change the client instance

  AuthRemoteDataSourceImpl(this.supabaseClient);
  @override
  Future<String> logInWithEmailPassword(
      {required String email, required String password}) {
    // TODO: implement logInWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<String> signUpWithEmailPassword(
      {required String name,
      required String email,
      required String password}) async {}
}
