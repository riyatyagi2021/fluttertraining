import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.teal
      ),
      home: SafeArea(child: AddItem()),
    );
  }
}

class AddItem extends StatefulWidget {
  const AddItem({Key? key}) : super(key: key);
  @override
  _AddItemState createState() => _AddItemState();
}


class _AddItemState extends State<AddItem> {

  int total=0;
  int price =0;
  int quantity =0;
  int discount = 0;


  void _incrementCounter() {
    setState(() {
     total = quantity*(price - discount); //int.parse(value);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
       margin: EdgeInsets.fromLTRB(10,50,10,10),
        child: ListView(
          children:[
            Column(
            mainAxisAlignment: MainAxisAlignment.start,
          //  crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Add vegetables here',style: TextStyle(
                  fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black
              ),),
              Container(
                margin: EdgeInsets.fromLTRB(25,25,5,25),
                child: Row(
                  children: [

                     Expanded(
                      child:Text("Name",style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 20
                ),),
                     ),
                    Expanded(
                      flex: 2,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter the vegetable Name',
                        ),
                      ),
                    )
                  ],
                 ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25,25,5,25),
                child: Row(
                  children: [
                    Expanded(
                      child: Text("Price",style: TextStyle(
                          fontWeight: FontWeight.bold,fontSize: 20
                      ),),
                    ),
                    Expanded(
                      flex: 2,
                      child: TextField(
                        onChanged: (text) {
                          if (text.isNotEmpty) {
                            price = int.parse(text);
                          } else {
                            price = 0;
                          }
                          _incrementCounter();
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter the price',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25,25,5,25),
                child: Row(
                  children: [
                    Expanded(
                      child: Text("Quantity",style: TextStyle(
                          fontWeight: FontWeight.bold,fontSize: 20
                      ),),
                    ),
                    Expanded(
                      flex: 2,
                      child: TextField(
                        onChanged: (text) {
                          if (text.isNotEmpty) {
                            quantity = int.parse(text);
                          } else {
                            quantity = 0;
                          }
                          _incrementCounter();
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Quantity',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25,25,5,25),
                child: Row(
                  children: [
                    Expanded(
                      child: Text("Discount",style: TextStyle(
                          fontWeight: FontWeight.bold,fontSize: 20
                      ),),
                    ),
                    Expanded(
                      flex: 2,
                      child: TextField(
                        onChanged: (text) {
                          if (text.isNotEmpty) {
                            discount = int.parse(text);
                          } else {
                            discount = 0;
                          }
                          _incrementCounter();
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Discount ',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25,25,5,25),
                child: Row(
                  children: [
                    Expanded(
                      child: Text("Total",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,fontSize: 20
                      ),),
                    ),
                    Container(
                      height: 60,
                      width: 200,
                      decoration:BoxDecoration(
                          //color: Colors.grey[200],
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                      child: Expanded(
                        child: Text("$total ",style: TextStyle(
                            fontWeight: FontWeight.bold,fontSize: 20
                        ),),
                      ),
                    )
                  ],
                ),
              ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                  width: double.infinity,
                  child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.green,
                        child: Text('Add'),
                      onPressed: (){
                          Navigator.pop(context);
                      },
              ),

                )
            ],
          ),
          ],
        ),
      )

    );
  }
}

