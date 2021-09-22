import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterprojects/task2.dart';



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
      home: SafeArea(child: Login()),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 750,
        width: 360,

        color: Colors.grey,
        child: Container(
          height:100,
          width: 340,
          color: Colors.yellow,
          margin: EdgeInsets.all(20),
          padding:  EdgeInsets.symmetric(horizontal: 70,vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Login Here',style: TextStyle(
                    fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black
                ),),
            Container(
                margin: EdgeInsets.only(top: 50),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Your Email',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Your Password',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(60,30,30,30),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: Text('Sign In'),
                  onPressed: (){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => PageSecond()),
                    );
                  },
                ),
              )
            ],
          ),
        ),

      ),


    );
  }
}
