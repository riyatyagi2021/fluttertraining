import 'package:flutter/material.dart';
import 'package:flutterprojects/pagesdrawer/secondpage.dart';
import 'package:flutterprojects/pagesdrawer/firstpage.dart';
import 'package:flutterprojects/pagesdrawer/thirdpage.dart';


class MyNavigationBar extends StatefulWidget {

  MyNavigationBar ( {Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar > {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[PageFirst(),SecondPage(),ThirdPage()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.shop),label: "Task1",),
              BottomNavigationBarItem(icon: Icon(Icons.task),label: "Task2",backgroundColor: Colors.green),
           BottomNavigationBarItem(icon: Icon(Icons.task_alt_outlined),label: "Task3"),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          //iconSize: 30,
          onTap: _onItemTapped,
          //elevation: 2
      ),
    );
  }
}