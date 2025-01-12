import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_screens/pages/logIn.dart';
import 'package:ui_screens/pages/signIn.dart';

class MyAppRouter{

  GoRouter router = GoRouter(
    
    routes: [
    GoRoute(
      name: 'sign-up',
      path: '/',
      pageBuilder: (BuildContext context, GoRouterState state) {
        return MaterialPage(child: SignUpScreen());
      },
    ),
    GoRoute(
      name: 'log-in',
      path: '/login',
      pageBuilder: (context, state) {
        return MaterialPage(child: LogIn());
      },
    )
  ]);
}