import 'package:bloc_basics/blocs/internet_bloc/internet_bloc.dart';
import 'package:bloc_basics/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

// Flutter bloc
// states and event : state is somethings that is going to be changes on specific event
// ex. when I click on log in button i add an event,
//bloc will get to know that i got this event on this event I want to emit something
// events - add
// state - emit

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      //is use to provide a bloc
      create: (context) => InternetBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
