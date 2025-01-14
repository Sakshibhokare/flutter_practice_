import 'package:currency_converter/currency_converter_cupertino.dart';
import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyCupertinoApp());
}

// types of Widget
// 1. StatelessWidget
// 2. StatefulWidget
// 3. InheritedWidget

//what is state: state refers to any data that will determine how the screen will look like
// state is some data that your Widget will care about

// **** Const : it makes widget compile time constant, it means we does not require to recreate the widget at compile time
//it improves the performance of an application
//const specifies that this widget dows not have to be rebuild
class MyApp extends StatelessWidget {
  const MyApp(
      {super.key}); //key is a class which helps flutter to identify the widgets

// A app should follow a particular guideline for that we have some design systems
// 1. Material Design
// 2. Cupertino Design : use for iOS app design

//stateless widget requires to override a widget
  @override
  Widget build(BuildContext context) { //build context tell the location of the widget in widget tree it a very important concept 
    return const MaterialApp(//setup a playground with a theme
      home: CurrencyConverterCupertinoPage(),
    );
  }
}


class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(//setup a playground with a theme
      home: CurrencyConverterCupertinoPage(),
    );
  }
}