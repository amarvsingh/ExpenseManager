import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget{
  final Function addTx;
  String titleInput;
  String amountInput;

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              onChanged: (valTitle) {
                titleInput = valTitle;
              },
              cursorColor: Colors.purple,
              style: TextStyle(
                color: Colors.purple,
              ),
              decoration: InputDecoration(
                labelText: "Title",
                labelStyle: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            TextField(
              onChanged: (valAmount) {
                amountInput = valAmount;
              },
              cursorColor: Colors.purple,
              style: TextStyle(
                color: Colors.purple,
              ),
              decoration: InputDecoration(
                labelText: "Amount",
                labelStyle: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            FlatButton(
              child: Text("Add Transaction"),
              textColor: Colors.purple,
              onPressed: () {
                addTx(titleInput, double.parse(amountInput));
              },
            ),
          ],),
      ),
    );
  }

}