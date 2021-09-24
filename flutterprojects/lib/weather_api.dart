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

class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  _WeatherState createState() => _WeatherState();
}



class _WeatherState extends State<Weather> {
  var maindata;
 /* var tempMax;
  var tempMin;*/


  Future weather()async{
    var response=await http.get(Uri.parse('http://api.openweathermap.org/data/2.5/weather?q=Noida&appid=ed18cb541dc5567aa0b8d67f30e2b90e'));

    print("riyaa" + response.statusCode.toString());

    var data=jsonDecode(response.body);


    setState(() {
      maindata=data['main'];
      // desc=data['weather'];

    });
    // double temp=maindata['temp'];
    // tempMax=maindata['tempMax'];
    //   tempMin=maindata['tempMin'];
    //  print(temp);
    // print(tempMax);
    //   print(tempMin);

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
        margin: EdgeInsets.fromLTRB(10,50,10,20),
        child: Container(
         // color: Colors.grey,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: AssetImage('assets/images/hi.jpeg'),
                fit: BoxFit.fill,
              ),
            ),
            height: 150,
            padding:EdgeInsets.all(15) ,
            margin: EdgeInsets.all(20),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(" Temperature - ", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                    Text("${maindata['temp']}",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(" Temperature Max - ", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                    Text("${maindata['temp_max']}",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(" Temperature Min- ", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                    Text("${maindata['temp_min']}",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow)),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text(" Humidity - ", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                    Text(" ${maindata['humidity']}",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(" Pressure  - ", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                    Text("${maindata['pressure']}",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow)),
                  ],
                ),
              ],
            )
        ),
      ),
    );
  }
}





