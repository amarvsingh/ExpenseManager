import 'package:flutter/material.dart';
import '../models/eachTransaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget{
  final List<EachTransaction> transactions;

  TransactionList(this.transactions);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: transactions.map((transaction) {
      return Card(
        child: Row(children: <Widget>[
          Container(
            child: Text(
              "Rs. ${transaction.amount}",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.purple
              ),
            ),
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.deepPurple,
                width: 2,
              ),
            ),
          ),
          Column(children: <Widget>[
            Container(
              child: Text(
                transaction.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              child: Text(
                DateFormat("dd/MM/yyyy").format(transaction.date),
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ],),
      );
    }).toList(),
    );
  }
}