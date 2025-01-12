import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String>fruits=['orange', 'apple', 'Banana', 'mango']; //we use this when we don't know the exact list count, use Listview.builder with it 
  Map fruit_person={
    'fruits' :['orange', 'apple', 'Banana', 'mango'],
    'names':['karan', 'naman', 'taran', 'charan']
  }; //map are used for key value pairs 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List and Grid'),
        backgroundColor: Colors.deepPurple,
        elevation: 20,
      ),

        body: Container( 
              child: ListView.builder(
                itemCount: fruits.length,
                itemBuilder: (context, index) {
                  return Card( 
                    child: ListTile(
                      // title: Text(fruits[index]),
                      leading: Icon(Icons.person),
                      title: Text(fruit_person['fruits'][index]),
                      subtitle: Text(fruit_person['names'][index]), //index is required to fetch each and every index 
                    ),
                  );
                },
              ),
        ),



      // body: ListView( //column and list are almost similar but when we have scrolling column give error
      //   children: [ 
      //     Card( //we can use container also 
      //     color: const Color.fromARGB(255, 195, 160, 255),
      //       child: ListTile(
      //         title: Text('Orange'),
      //         subtitle: Text("I am orange"),
              
      //       ),
      //     ),//we can have multiple cards

          
      //   ],

      // child:GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      // crossAxisSpacing:20, mainAxisSpacing:20,
      //childAspectRatio:10), //maximum two elements will be there in a cross axis
      // children:[
      //   Card(child: Center(child: Text('Orange'),),
      //   ),
      //   Card(child: Center(child: Text('Orange'),),
      //   ),
      //   Card(child: Center(child: Text('Orange'),),
      //   ),
      //   Card(child: Center(child: Text('Orange'),),
      //   ),

      // ]

      

      // also have gridview builder 
      // child: GridView.builder(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
      //   itemBuilder: fruits.length,
      //   itemBuilder: (context, index){
      //     return Card( 
      //       child: Center(child: Text(fruits[index]),),
      //     );
      //   }
      // )
    );
  }
}