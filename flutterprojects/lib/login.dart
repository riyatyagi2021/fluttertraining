import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterprojects/task2navigationss.dart';



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
        color: Colors.teal,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Login Here',style: TextStyle(
                    fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black
                ),),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 50,vertical: 50),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Your Email',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50,vertical: 5),
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
    );
  }
}
