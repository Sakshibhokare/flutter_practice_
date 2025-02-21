import 'package:flutter/material.dart';

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
    return const Placeholder();
  }
}
