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
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

