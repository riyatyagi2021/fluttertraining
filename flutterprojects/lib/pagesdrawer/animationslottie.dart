import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Animations extends StatefulWidget {
  const Animations({Key? key}) : super(key: key);

  @override
  _AnimationsState createState() => _AnimationsState();
}

class _AnimationsState extends State<Animations> {
  List ani = [
    "https://assets3.lottiefiles.com/packages/lf20_dn3xsjbz.json",
        "https://assets3.lottiefiles.com/packages/lf20_ah1zbzo1.json",
        "https://assets4.lottiefiles.com/packages/lf20_emy3lanj.json"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:
            /*ListView(
                 children: [
                   Lottie.network('https://assets3.lottiefiles.com/packages/lf20_ah1zbzo1.json'),
                   Lottie.network('https://assets9.lottiefiles.com/packages/lf20_dUbSb3.json'),
                   Lottie.network('https://assets4.lottiefiles.com/packages/lf20_emy3lanj.json'),

                 ],
               )*/
            ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: ani.length,
                itemBuilder: (BuildContext context, int index) {
                  print(ani[1]);
                  return Lottie.network(ani[index]);
                }),
            ),
    );
  }
}
