import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:http/http.dart' as http;


class User{
  late final int id;
  late final String employeeName;
  late final int employeeSalary;
  late final int employeeAge;
  late final String profileImage;

  User(this.id,this.employeeName,this.employeeSalary,this.employeeAge,this.profileImage);

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    employeeName = json['employee_name'];
    employeeSalary = json['employee_salary'];
    employeeAge = json['employee_age'];
    profileImage = json['profile_image'];
  }

}


class ProfileList extends StatefulWidget {
  const ProfileList({Key? key}) : super(key: key);

  @override
  _ProfileListState createState() => _ProfileListState();
}

class _ProfileListState extends State<ProfileList> {



  Future <List<User>> getUser() async {
    final response = await http.get(
        Uri.parse('https://dummy.restapiexample.com/api/v1/employees'));
    print("ertyuioiuytr" + response.statusCode.toString());


var jondata=jsonDecode(response.body);
 // var jsondata=User.fromJson(jondata);

     List<User> users=[];
      for(var u in jondata['data']){
        User user=User.fromJson(u);
        users.add(user);
      }
       print(users.length);
      return users;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder(
          future: getUser(),
          builder: (BuildContext context, AsyncSnapshot<List<User>> snapshot) {
            if (snapshot.data == null) {
              return Container(
                child: Center(child: Text("Loading")),
              );
            } else {
              return ListView.builder(
                 itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.blue,
                    margin: EdgeInsets.all(30),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(child: Text("Id ${snapshot.data![index].id.toString()}")),
                              Expanded(child: Text("Name - ${snapshot.data![index].employeeName.toString()}"))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(child: Text( "Age - ${snapshot.data![index].employeeAge.toString()}")),
                              Text( "Salary - ${snapshot.data![index].employeeSalary.toString()}"),
                            ],
                          ),
                        ],
                      )
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}


