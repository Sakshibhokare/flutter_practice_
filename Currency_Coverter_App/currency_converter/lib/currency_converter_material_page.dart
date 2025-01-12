import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {

    //we can create a veriable here and we can reuse it 
    final border = OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black38, width: 2),
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)
                    ),
    );


    return Scaffold(
      backgroundColor: Colors.black87,
      //in our global space scaffold setup some things
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'heyyy',
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(237, 234, 248, 0.984)),
            ),

            
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                style: TextStyle(color: Color.fromARGB(255, 28, 3, 33)),
                decoration: InputDecoration(
                  label: Text(
                    'Please enter the amount in USD',
                    style: TextStyle(color: Color.fromARGB(255, 10, 10, 10)),
                  ),
                  hintText: 'Please enter the amount in USD',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 4, 1, 4)),
                  prefixIcon: Icon(
                    Icons.monetization_on,
                    color: Color.fromARGB(255, 8, 1, 9),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  //when we click on text field 
                  //with variable 
                  //  focusedBorder: border,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black38, width: 2),
                      borderRadius: BorderRadius.horizontal(right: Radius.circular(15)
                      ),
                      ),
              
                  //even if we have not clicked on the text field
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black38, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                ),
              
                // keyboardType: TextInputType.number,
                // if we want comma and . also 
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true
                ),
              ),
            ),


            //button
            // two types of btns : raised, textbtn: appears like a button 
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                
                onPressed: () {
                  debugPrint('button clicked!!!!');
                },  
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 80, 79, 79)),
                  foregroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 255, 255, 255)),
                  fixedSize: WidgetStatePropertyAll(Size(400, 20)),
                  
                ),
                child: const Text('Convert'),
                ),
            )
          ],
        ),
      ),
    );
  }
}
