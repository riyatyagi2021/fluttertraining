import 'package:flutter/material.dart';


class Sample extends StatefulWidget {
  const Sample({Key? key}) : super(key: key);

  @override
  _SampleState createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          Image.asset('assets/images/camp1.jpeg'),
          Padding(
            padding: const EdgeInsets.all(12.0),
              child: Text("This is a beautiful place for camping!!",style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.bold,)),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  child: Text("Rishikesh, Uttarakhand",style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold,decorationColor: Colors.red),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 55.0),
                child: Icon((Icons.star),color: Colors.red,size: 30.0,),
              ),
              Text("4.5"),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: <Widget>[

                 Icon(Icons.call,color: Colors.blue,),
                Icon(Icons.near_me,color: Colors.blue,),
                Icon(Icons.share,color: Colors.blue,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              Text("Call",style: TextStyle(color: Colors.blue),),
              Text("Route",style: TextStyle(color: Colors.blue)),
              Text("Share",style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
Card(
  child:   Padding(
    padding: const EdgeInsets.all(16.0),
    child:   Text("Camping in Rishikesh, Shivpuri offered by Camp Ganga Vatika is a fairly inexpensive and best adventurous option for a stay in Rishikesh. Camping options available in Rishikesh are riverside camping, beach camping, jungle camping, and luxury camping. With these camping options, you can enjoy various adventure activities like river rafting in Rishikesh, cliff jump, zipline, bonfire, waterfall trek, bungee jumping, yoga, body surfing in Ganga river, etc. We offer the best camping and rafting packages at an affordable price which fits every one budget. Packages are starting at Rs 999 per person",style: TextStyle(color: Colors.teal),),
  ),
),
          RaisedButton(
            child: Text("Book Now"),
             onPressed: (){},
          color: Colors.blue,)


        ],
      ),
    );
  }
}


