import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override   
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
     //inside the function we can create the variable who's value can be changed 
    //1st 
    double result=0;
    final TextEditingController textEditingController = TextEditingController();


    //we can create a variable here and we can reuse it
    final border = OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black38, width: 2),
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)
                    ),
    );


    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        title: Text("Currency Converter", style: TextStyle(color: Colors.white))
      ),
      backgroundColor: Colors.black87,
      //in our global space scaffold setup some things
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(237, 234, 248, 0.984)),
            ),

            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Color.fromARGB(255, 28, 3, 33)),
                decoration: const InputDecoration(
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
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true
                ),
              ),
            ),


            //button
            // two types of btns : raised/elevated, textbtn: appears like a button 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                
                onPressed: () {
                  setState((){
                  result= double.parse(textEditingController.text)*81;

                  });
                },  
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 80, 79, 79)),
                  foregroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 255, 255, 255)),
                  minimumSize: WidgetStatePropertyAll(Size(400, 40)),
                  // shape: WidgetStatePropertyAll(CircleBorder()),
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



// class CurrencyConverterMaterialPage extends StatelessWidget {
//   const CurrencyConverterMaterialPage({super.key});
//   // inside the class we can not create immutable variable e can only create variable with final and const keyword 
//   // 1.create a variable that stores the converted currency value 
//   // 2. create a function that multiplies the value given by the textfield 
//   // 3. store the value in the variable that we created 
//   // 4. display the variable 

//   @override
//   Widget build(BuildContext context) {

// }
