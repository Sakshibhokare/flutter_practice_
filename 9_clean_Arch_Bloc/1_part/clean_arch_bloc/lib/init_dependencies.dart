import 'package:clean_arch_bloc/core/secrets/app_secrets.dart';
import 'package:clean_arch_bloc/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:clean_arch_bloc/features/auth/data/repository/auth_repository_impl.dart';
import 'package:clean_arch_bloc/features/auth/domain/repository/auth_repository.dart';
import 'package:clean_arch_bloc/features/auth/domain/usecases/user_sign_up.dart';
import 'package:clean_arch_bloc/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> init_dependencies() async {
  _initAuth();
  final supabase = await Supabase.initialize(
      url: AppSecrets.supabaseUrl, anonKey: AppSecrets.supabaseAnonKey);
  //single leton mean every time we request of type will get same instance life time
  serviceLocator.registerLazySingleton(() => supabase.client);
}

//initialize other dependencies
void _initAuth() {
  //every time it will give new instance
  serviceLocator.registerFactory<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(
      serviceLocator(),
    ),
  );

  serviceLocator.registerFactory<AuthRepository>(
    () => AuthRepositoryImpl(
      serviceLocator(),
    ),
  );

  serviceLocator.registerFactory(
    () => UserSignUp(
      serviceLocator(),
    ),
  );

  // only one state want to be present
  serviceLocator.registerLazySingleton(
    () => AuthBloc(
      userSignUp: serviceLocator(),
    ),
  );
}
