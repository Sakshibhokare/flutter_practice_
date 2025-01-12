import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( //defines the starting of an app roof of an application 
    appBar: AppBar(
      backgroundColor: Colors.deepPurple,
      title: Text('Container and SizedBox'),
      ),
      body: Center(
        child: Container(
          
          height: 100, width: 100, 
          child: Center(child: Text('Hey there', style: TextStyle(fontSize: 20),)),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 1, 106, 191),
            // shape: BoxShape.circle,
            // borderRadius: BorderRadius.circular(20)
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
            boxShadow: [BoxShadow(blurRadius: 20, spreadRadius: 5,color: Colors.blueAccent)
            ] // requires an array
            ),
          ),
      )

      // Center(child: SizedBox( //can not provide color, cant change border, we only use when we want to add a blank page 
      //   height: 50,
      //   width: 50,
      //   child: Text('Hello'),
      // ),),
    );
  }
}