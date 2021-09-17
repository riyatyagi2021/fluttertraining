import 'package:flutter/material.dart';
import 'package:flutterprojects/main.dart';
import 'package:flutterprojects/rowcolumn.dart';
import 'package:flutterprojects/task1.dart';
import 'package:flutterprojects/task2.dart';

//void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: MyNavigationBar ()),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar ({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar > {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[PageFirst(),MyLoginPage(),Sample()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer"),),
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