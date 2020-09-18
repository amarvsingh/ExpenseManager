import './widgets/userTransaction.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Expense Manager",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Expense Manager"),
      ),
      body: Column(children: <Widget>[
        Container(
          width: double.infinity,
          child: Card(
            child:Text("CHART!"),
            elevation: 5,
          ),
        ),
        Container(
          child: UserTransaction(),
        )
      ],),
    );
  }
}