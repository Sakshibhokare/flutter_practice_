import 'package:flutter/material.dart';
import 'package:shop_app/cart_page.dart';
import 'package:shop_app/global_variables.dart';
import 'package:shop_app/product_card.dart';
import 'package:shop_app/product_details_page.dart';
import 'package:shop_app/product_list.dart';

class HomePage extends StatefulWidget {
  //convert to state full so we can get the state changes
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  int currentPage = 0;
  
  List<Widget>pages=[
      ProductList(),
      CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      // body: currentPage == 0 ? ProductList() : CartPage(),
      body: pages[currentPage], //if you have more than two pages to show
    //we can also use indexedStack
      // body: IndexedStack(
      //   index: currentPage,
      //   children: pages,
      // )   , 
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedFontSize: 0,
        unselectedFontSize: 0, //this removes the space using for label even if it is empty
        onTap:(value){ //avoid using gesture detector here 
          setState(() {
            currentPage=value; //updating current page
          });
        } ,
        currentIndex: currentPage,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: '')
      ]),
    );
  }
}
