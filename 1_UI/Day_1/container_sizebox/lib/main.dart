import 'package:container_sizebox/widgets/button.dart';
import 'package:container_sizebox/widgets/container_sized.dart';
import 'package:container_sizebox/widgets/list_grid.dart';
import 'package:container_sizebox/widgets/rowscols.dart';
import 'package:flutter/material.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark, primaryColor: const Color.fromARGB(255, 73, 0, 199)),
      // home: Container_Sized(),
      home: ListGrid(),
    );
  }
}