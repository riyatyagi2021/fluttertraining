import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutterprojects/pagesdrawer/tabview.dart';



class AnimatedBottomBar extends StatefulWidget {
  const AnimatedBottomBar({Key? key}) : super(key: key);
  @override
  _AnimatedBottomBarState createState() => _AnimatedBottomBarState();
}


enum BottomIcons{Home,Account, Email, Settings,Favorite}

class _AnimatedBottomBarState extends State<AnimatedBottomBar> {
  BottomIcons bottomicons=BottomIcons.Home;
  String _value = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          bodyView(_value),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin:EdgeInsets.all(20) ,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20),),
                  color: Colors.green[100],
                ),
              padding: EdgeInsets.only(left: 20,right: 20,bottom:15,top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        bottomicons=BottomIcons.Home;
                        _value = 'home';
                      });
                    },
                    child:bottomicons==BottomIcons.Home? Container(
                      padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15),),
                        color: Colors.indigo.shade200.withOpacity(0.6),
                      ),
                      child: Row(
                      children: [
                          Icon(EvaIcons.home,color: Colors.indigo,),
                        SizedBox(width: 4),
                        Text("Home",style: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                      ),
                    ):Icon(EvaIcons.home)
                  ),
                  GestureDetector(
                      onTap: (){
                        setState(() {
                          bottomicons=BottomIcons.Favorite;
                          _value = 'fav';
                        });
                      },
                      child:bottomicons==BottomIcons.Favorite? Container(
                        padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15),),
                          color: Colors.indigo.shade200.withOpacity(0.6),
                        ),
                        child: Row(
                          children: [
                            Icon(EvaIcons.heart,color: Colors.indigo,),
                            SizedBox(width: 4),
                            Text("Favorites",style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                      ):Icon(EvaIcons.heart)
                  ),
                  GestureDetector(
                      onTap: (){
                        setState(() {
                          bottomicons=BottomIcons.Email;
                          _value = 'email';
                        });
                      },
                      child:bottomicons==BottomIcons.Email? Container(
                        padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15),),
                          color: Colors.indigo.shade200.withOpacity(0.6),
                        ),
                        child: Row(
                          children: [
                            Icon(EvaIcons.email,color: Colors.indigo,),
                            SizedBox(width: 4),
                            Text("Email",style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                      ):Icon(EvaIcons.email)
                  ),
                  GestureDetector(
                      onTap: (){
                        setState(() {
                          bottomicons=BottomIcons.Settings;
                          _value = 'setting';
                        });
                      },
                      child:bottomicons==BottomIcons.Settings? Container(
                        padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15),),
                          color: Colors.indigo.shade200.withOpacity(0.6),
                        ),
                        child: Row(
                          children: [
                            Icon(EvaIcons.settings,color: Colors.indigo,),
                            SizedBox(width: 4),
                            Text("Settings",style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                      ):Icon(EvaIcons.settings)
                  ),
                  GestureDetector(
                      onTap: (){
                        setState(() {
                          bottomicons=BottomIcons.Account;
                          _value = 'account';
                        });
                      },
                      child:bottomicons==BottomIcons.Account? Container(
                        padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15),),
                          color: Colors.indigo.shade200.withOpacity(0.6),
                        ),
                        child: Row(
                          children: [
                            Icon(EvaIcons.person,color: Colors.indigo,),
                            SizedBox(width: 4),
                            Text("Account",style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                      ):Icon(EvaIcons.person)
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

 bodyView(String value){
     if(value == 'home'){
      return TabbBar();
    } else if( value == 'fav'){
       return Container(
           color: Colors.green
       );
     }
     else if( value == 'email'){
       return Container(
           color: Colors.red
       );
     }
     else if( value == 'setting'){
       return Container(
           color: Colors.yellow
       );
     }
     else if( value == 'account'){
       return Container(
           color: Colors.teal
       );
     }
  }

}
