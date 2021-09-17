
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterprojects/bottom_navigationbar.dart';

/*void main(){
  runApp(Layout());
}*/

class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SafeArea(child: PageFirst ()),
    );
  }
}

class PageFirst extends StatefulWidget {
  const PageFirst({Key? key}) : super(key: key);



  @override
  _PageFirstState createState() => _PageFirstState();
}

class _PageFirstState extends State<PageFirst> {

int selecteditem=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Hello,", style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                      Icon(Icons.doorbell_rounded)
                    ],
                  ),
                ),
                Text("Esther Howard", style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                )),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(35, 15, 15, 15),
                          child: Text("To do", style: TextStyle(
                            fontSize: 15, color: Colors.black,
                          ),),
                        ),
                      ),
                      Card(
                        color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("In Progress", style: TextStyle(
                            fontSize: 15, color: Colors.black,
                          ), textAlign: TextAlign.center,),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 15, 35, 15),
                          child: Text("Done", style: TextStyle(
                            fontSize: 15, color: Colors.black,
                          ),),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 250,
                        width: 300,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Card(
                            color: Colors.blue,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Text("Office", style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                      )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Text("#223", style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                      )),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 13.0),
                                  child: Stack(

                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(left: 70),
                                        child: ClipRRect(
                                          child: Image.asset(
                                            'assets/images/riya.jpeg',
                                            height: 60, width: 60,),
                                          borderRadius: BorderRadius.circular(
                                              50.0),),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 40),
                                        child: ClipRRect(
                                          child: Image.asset(
                                            'assets/images/u2.jpeg', height: 60,
                                            width: 60,),
                                          borderRadius: BorderRadius.circular(
                                              50.0),),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: ClipRRect(
                                          child: Image.asset(
                                            'assets/images/i3.jpeg', height: 60,
                                            width: 60,),
                                          borderRadius: BorderRadius.circular(
                                              50.0),),
                                      ),
                                      Container(

                                        margin: EdgeInsets.fromLTRB(
                                            140, 10, 20, 20),
                                        child: Text("+3", style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      28, 28, 28, 10),
                                  child: LinearProgressIndicator(
                                    color: Colors.yellow,
                                    value: 30,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceEvenly,
                                  children: [
                                    Text("Progress"),
                                    Text("60%"),

                                  ],
                                )

                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 250,
                        width: 300,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Card(
                            color: Colors.blue,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Text("Office", style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                      )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Text("#223", style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                      )),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 13.0),
                                  child: Stack(

                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(left: 70),
                                        child: ClipRRect(
                                          child: Image.asset(
                                            'assets/images/riya.jpeg',
                                            height: 60, width: 60,),
                                          borderRadius: BorderRadius.circular(
                                              50.0),),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 40),
                                        child: ClipRRect(
                                          child: Image.asset(
                                            'assets/images/u2.jpeg', height: 60,
                                            width: 60,),
                                          borderRadius: BorderRadius.circular(
                                              50.0),),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: ClipRRect(
                                          child: Image.asset(
                                            'assets/images/i3.jpeg', height: 60,
                                            width: 60,),
                                          borderRadius: BorderRadius.circular(
                                              50.0),),
                                      ),
                                      Container(

                                        margin: EdgeInsets.fromLTRB(
                                            140, 10, 20, 20),
                                        child: Text("+3", style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        )),
                                      ),
                                    ],
                                  ),
                                )

                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Employees", style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      )),
                      Text("See All", style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue
                      )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/images/riya.jpeg', height: 60, width: 60,),
                          borderRadius: BorderRadius.circular(50.0),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/images/riya.jpeg', height: 60, width: 60,),
                          borderRadius: BorderRadius.circular(50.0),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/images/riya.jpeg', height: 60, width: 60,),
                          borderRadius: BorderRadius.circular(50.0),),
                      ),
                      ClipRRect(
                        child: Image.asset(
                          'assets/images/riya.jpeg', height: 60, width: 60,),
                        borderRadius: BorderRadius.circular(50.0),),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 5, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Documents", style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      )),
                      Text("See All", style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue
                      )),
                    ],
                  ),
                ),
                Container(
                  width: 340,
                  height: 60,
                  margin: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Row(
                      children: [
                        Icon(Icons.book_online),
                        Text("Equipments Purchase"),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 340,
                  height: 60,
                  margin: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Row(
                      children: [
                        Icon(Icons.book_online),
                        Text("Equipments Purchase"),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 340,
                  height: 60,
                  margin: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Row(
                      children: [
                        Icon(Icons.book_online),
                        Text("Equipments Purchase"),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 340,
                  height: 60,
                  margin: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Row(
                      children: [
                        Icon(Icons.book_online),
                        Text("Equipments Purchase"),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 340,
                  height: 60,
                  margin: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Row(
                      children: [
                        Icon(Icons.book_online),
                        Text("Equipments Purchase"),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 340,
                  height: 60,
                  margin: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Row(
                      children: [
                        Icon(Icons.book_online),
                        Text("Equipments Purchase"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
   /*   bottomNavigationBar: BottomNavigationBar(
        items:<BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.task),label: "Task1"),
          BottomNavigationBarItem(icon: Icon(Icons.tab_sharp),label: "Task2"),
          BottomNavigationBarItem(icon: Icon(Icons.task_alt_outlined),label: "Task3"),
        ],
        currentIndex: selecteditem,
        onTap: (setvalue){
          setState(() {
            selecteditem=setvalue;
          });
        }
      ),*/
    );
  }
}
