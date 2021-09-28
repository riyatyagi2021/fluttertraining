import 'dart:async';
import 'package:flutter/material.dart';
import 'login.dart';

void main() { runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => Login()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
        width: double.infinity,
        child:Image.asset('assets/images/gal.jpeg',fit: BoxFit.cover,)
    );
  }
}