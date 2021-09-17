import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'main.dart';

/*void main() {
  runApp(Demo());
}*/

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SafeArea(child: MyLoginPage()),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10.00),
        decoration: BoxDecoration(
          color: Colors.teal,
          shape: BoxShape.rectangle,
          /*      boxShadow: [BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
      ],*/
        ),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              height: 200,
              width: 500,
              color: Colors.red,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                      radius: 60,
                      child: ClipRRect(
                        child: Image.asset('assets/images/riya.jpeg',
                            height: 90, width: 90),
                        borderRadius: BorderRadius.circular(50),
                      )),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Helllo Riya",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                        Row(
                          children: [Text("4.5"), Icon(Icons.star)],
                        ),
                      ],
                    ),
                  ),
                  // Icon(Icons.star)
                ],
              ),
            ),
            Container(
              height: 200,
              width: 500,
              color: Colors.yellow,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text("Morning"),
                    Text("Nooon"),
                    Text("Evening"),
                    Text("Night"),
                    Text("Morning"),
                    Text("Nooon"),
                    Text("Evening"),
                    Text("Night"),
                    Text("Morning"),
                    Text("Nooon"),
                    Text("Evening"),
                    Text("Night"),
                    Text("Morning"),
                    Text("Nooon"),
                    Text("Evening"),
                    Text("Night"),
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              width: 500,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Morning"),
                  Text("Nooon"),
                  Text("Evening"),
                  Text("Night"),
                ],
              ),
            ),
            Container(
              height: 200,
              width: 500,
              color: Colors.red,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text("Horizontall"),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.00)),
                      color: Colors.green,
                      child: Container(
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.00)),
                    color: Colors.green,
                    child: Container(
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.00)),
                    color: Colors.green,
                    child: Container(
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.00)),
                    color: Colors.green,
                    child: Container(
                      height: 50,
                      width: 50,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 200,
              width: 500,
              color: Colors.yellow,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                        "dfghjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjnbvcxzsdfghjknbvcxsdfghjnbvcxzxcvbjytrewaxcvbnkuytrdcvbn"),
                  ))
                ],
              ),
            ),
            Container(
              height: 200,
              width: 500,
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.00)),
                  color: Colors.green,
                  elevation: 10,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(
                          Icons.album,
                        ),
                        title: Text(
                          "Arjit's Songss",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            MyHomePage()
          ],
        ),
      ),
    );
  }
}
