import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/additiona_information.dart';
import 'package:weather_app/hourly_forecast_item.dart';
import 'package:http/http.dart' as http;
class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  
  @override
  void initState() {
    super.initState();
    getCurrentWeather();
  }

  Future getCurrentWeather() async{
    String cityName='Landon';
    final res = await http.get(
      Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$cityName&APPID=2d438fb25ed34badd43ba71cf92f273b'), //uri is a bigger set and URL is a subset of it 
    );
  }

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
                HourlyForecastItem(
                  icon: Icons.cloud,
                  temperature: '300',
                  time: '00:00',

                ),
                HourlyForecastItem(
                  icon: Icons.cloud,
                  temperature: '300',
                  time: '00:00',

                ),
                HourlyForecastItem(
                  icon: Icons.cloud,
                  temperature: '300',
                  time: '00:00',

                ),
                HourlyForecastItem(
                  icon: Icons.cloud,
                  temperature: '300',
                  time: '00:00',

                ),
                HourlyForecastItem(
                  icon: Icons.cloud,
                  temperature: '300',
                  time: '00:00',

                ),
                HourlyForecastItem(
                  icon: Icons.cloud,
                  temperature: '300',
                  time: '00:00',

                ),
                
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),


            //additional information
            
          Align(  //helpful for the alignment container/crossAccess can be used 
            alignment: Alignment.centerLeft,
            child: const Text('Additional Information',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
            ),
          ),



          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             //instead of writing again we create a widget in a separate file will pass the changing character and create a constructor 
            
              AdditionalInformation(
                icon: Icons.water_drop,
                label: 'Humidity',
                value: '94',
              ),

              AdditionalInformation(
                icon: Icons.air,
                label: 'winds Speed',
                value: '100',
              ),

              AdditionalInformation(
                icon: Icons.beach_access,
                label: 'Pressure',
                value: '150',
              ),
            ],
          )



          ],
        ),
      ),
    );
  }
}


