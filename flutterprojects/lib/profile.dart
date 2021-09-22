import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'modelprofile.dart';

void main() {
  runApp(Layout());
}

class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SafeArea(child: Profile()),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Profile profile = Profile();
  Profileee profilee = Profileee();

  // late Profilee profilee;



  @override
  void initState() {
    super.initState();
    apiCall();
  }
  Future apiCall() async {

    final response = await http
        .get(Uri.parse('https://dummy.restapiexample.com/api/v1/employee/1'));
    print("ertyuioiuytr" + response.statusCode.toString());

    if (response.statusCode == 200) {
      print('--------------->' + response.statusCode.toString());
      setState(() {

        profilee = Profileee.fromJson(jsonDecode(response.body));
        // print('*********'+profilee.data!.employeeName.toString());
      });

    } else {
      throw Exception("Failed to load");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 80),
          child: Column(
            children: [
              Image.asset('assets/images/riya.jpeg'),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Text(" Id -${profilee.data?.id.toString() ?? ''} ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
              Text("Name ${profilee.data?.employeeName ?? ''}",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              Text(" Salary - ${profilee.data?.employeeSalary ?? ''}",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              Text(" Age - ${profilee.data?.employeeAge ?? ''}",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}
