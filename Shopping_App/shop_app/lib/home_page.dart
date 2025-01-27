import 'package:flutter/material.dart';

class HomePage extends StatefulWidget { //convert to state full so we can get the state changes 
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> filters = const['All', 'Addidas', 'Nike', 'Bata'];

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(255, 255, 255, 1)
                        ),
                        borderRadius: BorderRadius.horizontal(left:Radius.circular(50) )
                      );
  
    return  Scaffold(
      body: SafeArea(
        //safe area will ignore the area of notches of mobile phone
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Shoes\nCollection',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                ),
                Expanded( 
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: border,
                      enabledBorder: border,
                      focusedBorder: border
                  ))
                ),

              
              ],
            ),
            SizedBox(
              height: 120,
               child: ListView.builder( //to display the list items || this will try to take all high and width so use sized box
                    itemCount: filters.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder:(context, index) {
                      final filter = filters[index];
                      return Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Chip(
                          label: Text(filter),
                          backgroundColor: Color.fromRGBO(245, 247, 249, 1),
                          side: const BorderSide(
                            color: Color.fromRGBO(245, 247, 249, 1)
                          ),
                          labelStyle: TextStyle(
                          fontSize: 16
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        ) ,
                        ),
                      );
                    },
                    ),
            )
          ],
        ),
      ),
    );
  }
}
