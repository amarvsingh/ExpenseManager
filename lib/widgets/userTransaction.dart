import 'package:flutter/material.dart';
import './newTransaction.dart';
import './transactionList.dart';
import '../models/eachTransaction.dart';

class UserTransaction extends StatefulWidget{
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction>{
  final List<EachTransaction> eachTransaction = [
    EachTransaction(id : "t1",
        title: "New Shoes",
        amount:  7000.00,
        date:  DateTime.now()
    ),
    EachTransaction(id : "t2",
        title: "T-shirt",
        amount:  1200.00,
        date:  DateTime.now()
    ),
  ];

  void _addTransaction(String newTitle, double newAmount){
    final newTx = EachTransaction(
        title: newTitle,
        amount: newAmount,
        date: DateTime.now(),
        id: DateTime.now().toString()
    );
    setState(() {
      eachTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: <Widget>[
      NewTransaction(_addTransaction),
      TransactionList(eachTransaction),
    ],);
  }
}