import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'modelprofile.dart';

List<Sentences> list=[];
class Sentences{
  late final int id;
  late final int userId;
  late final String title;
  late final String body;

  Sentences(this.id,this.userId,this.title,this.body);

  Sentences.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    title = json['title'];
    body = json['body'];
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
  var datalist;



  @override
  void initState() {
    super.initState();
    sentencelist();
    apiCall();

  }

  Future apiCall() async {
    final response = await http
        .get(Uri.parse('https://dummy.restapiexample.com/api/v1/employee/1'));
    print("ertyuioiuytr" + response.statusCode.toString());
    if (response.statusCode == 200) {
     // print('--------------->' + response.statusCode.toString());
      setState(() {
        profilee =Profileee.fromJson(jsonDecode(response.body));
        // print('*********'+profilee.data!.employeeName.toString());
      });
    } else {
      throw Exception("Failed to load");
    }
  }



Future<List<Sentences>> sentencelist()async{

    var response=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    print("emplist" + response.statusCode.toString());

    if(response.statusCode==200){
      setState(() {
        datalist=jsonDecode(response.body);
        for(var u in datalist){
          Sentences sentences=Sentences.fromJson(u);
          list.add(sentences);
        }
      });
    }else{
      throw Exception("Failed");
    }
  print(list.length);
  return list;

}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50),
        padding: EdgeInsets.all(50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           // Image.asset('assets/images/riya.jpeg',height: 50,width: 50,),
                  Text(" Id -${profilee.data?.id.toString() ?? ''} ",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
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
            Container(
              height: 500,
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                        Text(" Title  - ${list[index].title}",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                         Container(
                          margin: const EdgeInsets.only(bottom: 58.0),
                           child: Text(" Body  -  ${list[index].body}",style: TextStyle(
                               fontSize: 16,
                               color: Colors.blue)),
                         ),
                    ],
                  );
                },

              ),
            ),
          ],
        ),
      ),
    );
  }
}
