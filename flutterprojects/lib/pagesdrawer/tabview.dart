import 'package:flutter/material.dart';

class ToggleBar extends StatefulWidget {
  const ToggleBar({Key? key}) : super(key: key);
  @override
  _ToggleBarState createState() => _ToggleBarState();
}

class _ToggleBarState extends State<ToggleBar> {

  List<String> labels=['Projects', 'Clients', 'Schedules'];
  int counter=0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Container(
            color: Colors.white,
              child: Container(
               //color: Colors.white,
                margin: EdgeInsets.fromLTRB(5, 40, 5, 10),
              padding: EdgeInsets.all( 20),
                //   height: 740,
                // width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all( Radius.circular(20),),
                  color: Colors.red[300]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                           Icon(Icons.menu_book,size: 40,),
                        Container(
                          margin: EdgeInsets.fromLTRB(20,1,150,1),
                            child: Icon(Icons.search,size: 40,)),
                        CircleAvatar(
                            child: ClipRRect(
                              child: Image.asset('assets/images/riya.jpeg',
                                  height: 90, width: 90),
                              borderRadius: BorderRadius.circular(50),
                            )),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text("Hello Riya!! ", style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Text("Good Evening ", style: TextStyle(
                          fontSize: 30,
                         // fontWeight: FontWeight.bold,
                          color: Colors.black
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all( Radius.circular(20),),
                        color: Colors.black,
                      ),
                      child: TabBar(
                        indicatorColor: Colors.black,
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue
                          ),
                          tabs:[
                            Tab(text: "Projects"),
                            Tab(text: "Clients"),
                            Tab(text: "Schedules"),
                          ],
                      ),
                    ),
                    SizedBox(
                      height: 400,
                      child:TabBarView(
                        children: [
                          Container(
                            color: Colors.white,
                          ),
                          Container(
                            color: Colors.blue,
                          ),
                          Container(
                            color: Colors.black,
                          ),
                        ],

                      )
                    )
                  ],
                ),
              ),
          ),
        ),
    );
  }
}
