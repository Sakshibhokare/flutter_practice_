import "package:flutter/material.dart";

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          TextButton(
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.black),
              elevation: MaterialStateProperty.all(20),
              backgroundColor: MaterialStateProperty.all(Colors.amber)
            ),
            onPressed: (){}, 
            child: Text('Click me!',
            style: TextStyle(fontSize: 20, color: Colors.pink))
            ),
            
            SizedBox(height: 20,),



            Container( //elevated button needs to be in a container to define the height and width

        
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(80))),
                
                ),
              onPressed: (){}, 
              child: Text('press me!', style: TextStyle(fontSize: 20, color: Colors.white),)))

        ],),
      ),
    );
  }
}