
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterprojects/additem.dart';
import 'package:flutterprojects/profile.dart';
import 'package:flutterprojects/profile_list_api.dart';
import 'package:flutterprojects/weather_api.dart';

import 'pagesdrawer/bottom_navigationbar.dart';


void main(){
  runApp(Sample());
}


class Sample extends StatelessWidget {
  const Sample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: SafeArea(child: PageSecond()),
    );
  }
}

class PageSecond extends StatefulWidget {
  const PageSecond({Key? key}) : super(key: key);

  @override
  _PageSecondState createState() => _PageSecondState();
}

class _PageSecondState extends State<PageSecond> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: -5,
        backgroundColor: Colors.grey,
        title: Text("Hi Riya!!", style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 30, color: Colors.black
        ),),
      ),
      drawer:Drawer(
        elevation: 5,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Text("RT"),
              backgroundColor: Colors.brown,
              ),
                accountName: Text("Riya Tyagi"),
                accountEmail: Text("tyagi.riya@gmail.com"),),
            ListTile(
              title: Text("Next Page"),
                trailing: Icon(Icons.navigate_next),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context,MaterialPageRoute(builder:(context)=>MyNavigationBar()));
                
              },
            ),
            ListTile(

              title: Text("Email"),
              trailing: Icon(Icons.email),
            ),
            ListTile(
              title: Text("Cloud"),
              trailing: Icon(Icons.cloud),
            ),
            ListTile(
              title: Text("Star"),
              trailing: Icon(Icons.star),
            ), ListTile(
              title: Text("Album"),
              trailing: Icon(Icons.album),
            ), ListTile(
              title: Text("Call"),
              trailing: Icon(Icons.add_ic_call),
            ),
               Divider(),
            ListTile(
              tileColor: Colors.amber,
              title: Text("Thank You!! Click to Exit"),
              trailing: Icon(Icons.thumb_up_alt),
              onTap:()=> Navigator.of(context).pop(),
                    ),

          ],
        ),
      ) ,
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  /*  Padding(
                      padding: const EdgeInsets.fromLTRB(5,10,10,10),
                      child: Text("Hi Riya!!", style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 30, color: Colors.black
                      ),),
                    ),*/
                    /*Container(
                      margin: EdgeInsets.only(top: 2),
                      child: Image.asset('assets/images/smiley.jpeg', height: 40,
                        width:40,),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 130),
                        child: Icon(Icons.doorbell_sharp))*/
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text("What are you looking for?",style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 20
                  ),),
                ),
                Container(
                  width: 340,
                  height: 40,
                  margin: EdgeInsets.fromLTRB(5,10,5,20),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget> [
                        Text("Search"),
                        Icon(Icons.search),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 13),
                  child: Text("Categories",style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 20
                  ),),
                ),
                 Container(
                   margin: EdgeInsets.fromLTRB(10, 20, 20, 10),
                   child: SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Card(
                           color: Colors.white,
                           elevation: 10,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(10),),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset('assets/images/veg.jpg',height: 80,
                                  width:80,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text("Veg"),
                              )
                            ],
                          ),
                         ),
                         Card(
                           color: Colors.white,
                           elevation: 10,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(10),),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Image.asset('assets/images/meat.png',height: 80,
                                   width:80,),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(bottom: 8.0),
                                 child: Text("Meat"),
                               )
                             ],
                           ),
                         ),
                         Card(
                           color: Colors.white,
                           elevation: 10,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(10),),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Image.asset('assets/images/dairy.png',height: 80,
                                   width:80,),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(bottom: 8.0),
                                 child: Text("Dairy"),
                               )
                             ],
                           ),
                         ),
                         Card(
                           color: Colors.white,
                           elevation: 10,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(10),),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Image.asset('assets/images/fish.png',height: 80,
                                   width:80,),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(bottom: 8.0),
                                 child: Text("Fish"),
                               )
                             ],
                           ),
                         ),
                         Card(
                           color: Colors.white,
                           elevation: 10,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(10),),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Image.asset('assets/images/veg.jpg',height: 80,
                                   width:80,),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(bottom: 8.0),
                                 child: Text("Meat"),
                               )
                             ],
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 25, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Last Chance", style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      )),
                      Text("SEE ALL", style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 20, 20, 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          width: 200,
                          child: Card(
                            color: Colors.white,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Image.asset('assets/images/veg.jpg',height: 80,
                                    width:100,fit: BoxFit.fitWidth,),
                                ),
                                Text("Meat Balls",style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                ),),
                                Text("FREE",style: TextStyle(
                                    fontSize:15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                )),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 150,
                          width: 200,
                          child: Card(
                            color: Colors.white,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('assets/images/meat.png',height: 80,
                                    width:80,),
                                ),
                                Text("Pumpkin Soup",style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),),
                                Text("\$100",style: TextStyle(
                                    fontSize:15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                )),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 150,
                          width: 200,
                          child: Card(
                            color: Colors.white,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('assets/images/dairy.png',height: 80,
                                    width:80,),
                                ),
                                Text("Biryani",style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),),
                                Text("\$500",style: TextStyle(
                                    fontSize:15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                )),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 150,
                          width: 200,
                          child: Card(
                            color: Colors.white,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('assets/images/fish.png',height: 80,
                                    width:80,),
                                ),
                                Text("Chocolate Shake",style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),),
                                Text("\$200",style: TextStyle(
                                    fontSize:15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                )),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 150,
                          width: 200,
                          child: Card(
                            color: Colors.white,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('assets/images/veg.jpg',height: 80,
                                    width:80,),
                                ),
                                Text("Egg Burger Meal",style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),),
                                Text("\$500",style: TextStyle(
                                    fontSize:15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 250,
                  width: 330,
                  //transform: Matrix4.rotationZ(0.1),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Card(
                      color: Colors.lightGreen[300],
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
                                child: Text("Reviews", style: TextStyle(
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
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AddItem()),
            );
          },
        focusElevation: 2,
        tooltip: 'Increment',
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
        elevation: 2.0,
      ),
        bottomNavigationBar: Container(

          height: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),),
            child: BottomAppBar(
              //color: Colors.lightGreen,
              shape: CircularNotchedRectangle(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon((Icons.home),size: 25),
                IconButton(
                  icon: Icon(Icons.cloud,size: 25),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Weather()),
                    );
                  },
                ),
                      SizedBox.shrink(),
                IconButton(
                  icon: Icon(Icons.list,size: 25),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileList()),
                    );
                  },
                ),
                      IconButton(
                          icon: Icon(Icons.api,size: 25),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Profile()),
                          );
                        },
                          ),
                    ],
                  ),
                ),
              ),
            ),
  ),

      );
  }
}

