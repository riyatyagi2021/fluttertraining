import 'package:flutter/material.dart';
import 'package:flutterprojects/practice/rowcolumn.dart';

/*void main() {
  runApp(MyApp());
}*/

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SafeArea(child: MyHomePage()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(20.00),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.amber,
      ),
      child: Column(
        children: <Widget>[
          TextField(
            onSubmitted: (String username) {
              setState(() {
                name = username;
              });
            },
          ),
          Text("This is $name",
              style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 30)),
          Image.asset('assets/images/maggi1.jpeg', fit: BoxFit.cover),
          Padding(
            padding: EdgeInsets.all(60),
            child: Text(
              "Riya Tyagi",
              textDirection: TextDirection.rtl,
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 mainAxisSize: MainAxisSize.min,

                 children: [
                   Image.asset(
                     'assets/images/riya.jpeg',
                     height: 100,
                     width: 100,
                   ),
                   Image.asset(
                     'assets/images/i4.jpeg',
                     height: 100,
                     width: 100,
                   ),
                   Image.asset(
                     'assets/images/i4.jpeg',
                     height: 100,
                     width: 100,
                   ),
                   Image.asset(
                     'assets/images/i4.jpeg',
                     height: 100,
                    width: 100,
                   ),
                   Image.asset(
                     'assets/images/u2.jpeg',
                     height: 100,
                     width: 100,
                   ),
                 ]),
           ),
        ],
      ),
    );
  }
}


