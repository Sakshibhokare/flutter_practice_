import 'package:flutter/material.dart';
import 'package:shop_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping App',
      theme: ThemeData(
          //all over the application
          fontFamily: 'Lato',
          colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromRGBO(254, 206, 1, 1), //seed color will create a toner palate 
            primary: Color.fromRGBO(254, 206, 1, 1),
              ),
              inputDecorationTheme: const InputDecorationTheme(
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                prefixIconColor: Color.fromRGBO(119, 119, 119, 1)
              ),
              textTheme: TextTheme(
                titleMedium: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                )
              )
              ),
      home: const HomePage(),
    );
  }
}
