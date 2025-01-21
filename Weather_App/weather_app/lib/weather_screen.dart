import 'dart:ui';

import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                print("refresh");
              },
              icon: Icon(Icons.refresh))
          // GestureDetector(
          //   onTap: (){
          //     print("refresh");
          //   },
          //   child: Icon(Icons.refresh)
          //   ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //main card
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),

                //instead backdropfilter we can use ClipRReact so we can add borderRadius also
                child: BackdropFilter( //for making the background blur
                  filter: ImageFilter.blur(
                    sigmaX: 10,
                    sigmaY: 10
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          "300 F",
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Icon(
                          Icons.cloud,
                          size: 64,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Rain",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

          Align(  //helpful for the alignment container/crossAccess can be used 
            alignment: Alignment.centerLeft,
            child: const Text('Weather Forecast',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
            ),
            
            ),

            const SizedBox(height: 20,),

            SingleChildScrollView( //for making it horizontally scrollable 
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    // width: 100,
                    child: Card(
                      elevation: 10,
                      child: Container(
                        width: 100,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18)
                        ),
                        child: Column(
                          children: [
                            Text('03:00', style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),),
                        
                            const SizedBox(height: 8,),
                        
                            Icon(Icons.cloud, size: 32,),
                        
                            const SizedBox(height: 8,),
                        
                            Text('300.12')
                          ],
                        ),
                      ),
                    ),
                  ),
              
                  SizedBox(
                    // width: 100,
                    child: Card(
                      elevation: 10,
                      child: Container(
                        width: 100,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18)
                        ),
                        child: Column(
                          children: [
                            Text('03:00', style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),),
                        
                            const SizedBox(height: 8,),
                        
                            Icon(Icons.cloud, size: 32,),
                        
                            const SizedBox(height: 8,),
                        
                            Text('300.12')
                          ],
                        ),
                      ),
                    ),
                  ),
              
                  SizedBox(
                    // width: 100,
                    child: Card(
                      elevation: 10,
                      child: Container(
                        width: 100,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18)
                        ),
                        child: Column(
                          children: [
                            Text('03:00', style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),),
                        
                            const SizedBox(height: 8,),
                        
                            Icon(Icons.cloud, size: 32,),
                        
                            const SizedBox(height: 8,),
                        
                            Text('300.12')
                          ],
                        ),
                      ),
                    ),
                  ),
              
                  SizedBox(
                    // width: 100,
                    child: Card(
                      elevation: 10,
                      child: Container(
                        width: 100,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18)
                        ),
                        child: Column(
                          children: [
                            Text('03:00', style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),),
                        
                            const SizedBox(height: 8,),
                        
                            Icon(Icons.cloud, size: 32,),
                        
                            const SizedBox(height: 8,),
                        
                            Text('300.12')
                          ],
                        ),
                      ),
                    ),
                  ),
              
                  SizedBox(
                    // width: 100,
                    child: Card(
                      elevation: 10,
                      child: Container(
                        width: 100,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18)
                        ),
                        child: Column(
                          children: [
                            Text('03:00', style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),),
                        
                            const SizedBox(height: 8,),
                        
                            Icon(Icons.cloud, size: 32,),
                        
                            const SizedBox(height: 8,),
                        
                            Text('300.12')
                          ],
                        ),
                      ),
                    ),
                  ),
              
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            //additional information
            const Placeholder(
              fallbackHeight: 150,
            ),
          ],
        ),
      ),
    );
  }
}
