import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text('Rows and Colums'),),
      body: Container(
        height: h,
        width: w,
        color: Colors.deepPurple,
        // child: Row( //instead of Row we have wrap which will manage the height and width accordingly, wrap does not have the properties for main and cross axis alignment 
        //   // mainaxis for row is horizontal and the cross axis is vertical opposite for column  
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   // mainAxisAlignment: MainAxisAlignment.start,
        //   crossAxisAlignment: CrossAxisAlignment.start,


        //   //properties for wrap 
        //   // direction: Axis.vertical this will use vertical space first then move to the next column 
        //   // alignment: WrapAlignment.center


        //   children: [
        //   Container(height: 80, width: 80, color: Color.fromARGB(255, 136, 74, 250),),
        //   Container(height: 80, width: 80, color: Colors.white,),
        //   Container(height: 80, width: 80, color: Color.fromARGB(255, 136, 74, 250),),
        //   Container(height: 80, width: 80, color: Colors.white,)

        // ],),

        child: 
        Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
          children: [
          Container(height: 80, width: 80, color: Color.fromARGB(255, 136, 74, 250),),
          Container(height: 80, width: 80, color: Colors.white,),
          Container(height: 80, width: 80, color: Color.fromARGB(255, 136, 74, 250),),
          Container(height: 80, width: 80, color: Colors.white,)
        ],),
      ),
    );
  }
}