import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/cart_provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    // print(Provider.of<String>(context)); // it will get the nearest widget, once this got the nearest value it will stop looking for the value
    final cart=Provider.of<CartProvider>(context).cart;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),


      body: ListView.builder( //builder widget will provide a context which you can use
        itemCount: cart.length,
        itemBuilder:(context, index){
          final cartItem = cart[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(cartItem['imageUrl'] as String),
              radius: 30,
            ),
            

            //delete icon on shopping cart page 
            trailing: IconButton(
              onPressed: (){
                showDialog(
                  context: context,
                  builder: (context){
                    return AlertDialog(
                      title: Text('Delete Product',
                      style: Theme.of(context).textTheme.bodyMedium,),
                      content: Text('are you sure you want to remove the product from your cart?'),
                      actions: [
                        TextButton(onPressed: (){
                              Navigator.of(context).pop();
                        }, child: Text('No', style: TextStyle(color: Colors.blue),)),

                        TextButton(onPressed: (){
                              Provider.of<CartProvider>(context, listen: false).removeProduct(cartItem);
                              Navigator.of(context).pop();
                        }, child: Text('Yes', style: TextStyle(color: Colors.red),)),


                      ],
                      );
                  }
                  );
              }, icon: Icon(Icons.delete)
              ),
            
            title: Text(
              cartItem['title'].toString(),
              style: Theme.of(context).textTheme.bodySmall,
            ),
            subtitle: Text('Size: ${cartItem['size']}'),
          );
        } )
    );
  }
}