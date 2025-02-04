import 'package:flutter/material.dart';
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
  

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      body: ProductList(),
      bottomNavigationBar: BottomNavigationBar(
        onTap:(value){ //avoid using gesture detector here 
          setState(() {
            currentPage=value;
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
