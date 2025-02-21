import 'package:clean_arch_bloc/core/theme/theme.dart';
import 'package:clean_arch_bloc/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:clean_arch_bloc/features/auth/presentation/pages/login_page.dart';
import 'package:clean_arch_bloc/init_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (_) => serviceLocator<AuthBloc>(),
      ),
    ],
    child: const MyApp(),
  )); //to make bloc accessible everywhere
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.darkThemeMode,
      home: const LogInPage(),
    );
  }
}
