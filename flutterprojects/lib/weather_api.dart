import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class Main {
  late double temp;
  late double feelsLike;
  late double tempMin;
  late double tempMax;
  late int pressure;
  late int humidity;
  late int seaLevel;
  late int grndLevel;

  Main({required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
    required this.seaLevel,
    required this.grndLevel});

  Main.fromJson(Map<String, dynamic> json) {
    temp = json['temp'];
    feelsLike = json['feels_like'];
    tempMin = json['temp_min'];
    tempMax = json['temp_max'];
    pressure = json['pressure'];
    humidity = json['humidity'];
    seaLevel = json['sea_level'];
    grndLevel = json['grnd_level'];
  }
}


void main(){
    runApp(Myapp());
}


class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SafeArea(child: Weather()),
    );
  }
  }
  class Weather extends StatefulWidget {
    const Weather({Key? key}) : super(key: key);

    @override
    _WeatherState createState() => _WeatherState();
  }



  class _WeatherState extends State<Weather> {
    var maindata;
    var tempMax;
    var tempMin;


  Future weather()async{
    var response=await http.get(Uri.parse('http://api.openweathermap.org/data/2.5/weather?q=Noida&appid=ed18cb541dc5567aa0b8d67f30e2b90e'));

    print("riyaa" + response.statusCode.toString());

    var data=jsonDecode(response.body);


   setState(() {
     maindata=data['main'];
    // desc=data['weather'];
   });
    double temp=maindata['temp'];
    double tempMax=maindata['tempMax'];
    double tempMin=maindata['tempMin'];
    print(temp);

  }
@override
  void initState() {
    super.initState();
    weather();
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(" Temperature is  -      ${maindata['temp']} "),
                Text(" Max Temperature is -    ${maindata['tempMax']} "),
                Text(" Min Temperature is -   ${maindata['tempMin']} "),
                Text(" Humidity is  -  ${maindata['humidity']} "),
                Text(" Pressure is  -  ${maindata['pressure']} "),
               // Text(" Temperature is ${desc['description']} "),
              ],
            )




          ),
        ),
      );
    }
  }






