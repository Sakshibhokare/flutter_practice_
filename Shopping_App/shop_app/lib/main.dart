import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/cart_provider.dart';
import 'package:shop_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

// types of provider 
// provider : read only provider
// changeNotifierProvider: you can change the value and notify the widget that are listening to those changes 
// FutureProvider: this will listen to futures and show changes 
// StreamProvider : this will provide a stream 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      //instance of this class accessible through out the entire app
      create:(context)=> CartProvider(), //it is a simple class of flutter not from provider, when any update will happen it will listen and notify to them 
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
