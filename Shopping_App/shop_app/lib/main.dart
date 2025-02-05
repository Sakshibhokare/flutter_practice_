import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create:(context)=>{}, 
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopping App',
        theme: ThemeData(
            //all over the application
            fontFamily: 'Lato',
            colorScheme: ColorScheme.fromSeed(
              seedColor: Color.fromRGBO(254, 206, 1, 1), //seed color will create a toner palate 
              primary: Color.fromRGBO(254, 206, 1, 1),
                ),
                appBarTheme: AppBarTheme(
                    titleTextStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black, 
                    )
                ),
                inputDecorationTheme: const InputDecorationTheme(
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  prefixIconColor: Color.fromRGBO(119, 119, 119, 1)
                ),
                textTheme: TextTheme(
                  titleLarge: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 35
                    ),
                  titleMedium: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                  bodySmall: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  )
                ),
                useMaterial3: true,
                ),
        home:  HomePage(),
      ),
    );
  }
}
