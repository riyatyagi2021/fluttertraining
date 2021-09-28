import 'package:flutter/material.dart';


class SecondPage extends StatelessWidget {
   SecondPage({Key? key}) : super(key: key);
  final List<String> items = List.generate(30, (i) => " Item  ${i+1}");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Swipe to delete"),
      ),
      body: ListView.builder(
           itemCount: items.length,
          itemBuilder: (context, int index) {
              return Dismissible(
                background: Container(
                 color: Colors.red,
                ),
                  key: Key(items[index]),
                  child: ListTile(
                    title: Text("${items[index]}"),
                  ),
                   onDismissed: (direction){
                    items.removeAt(index);
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text("Item dismissed "),));
                },
              );
          },
      ),
    );
  }
}

