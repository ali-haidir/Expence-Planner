import 'package:expence_planner/models/transaction.dart';
import 'package:flutter/material.dart';

import 'new_input.dart';
import 'transactionlist.dart';

class UserTranaction extends StatefulWidget {
  @override
  _UserTranactionState createState() => _UserTranactionState();
}

class _UserTranactionState extends State<UserTranaction> {
  final List<Transaction> _usertransactions = [
    Transaction(
      id: 't1',
      title: "new shoes",
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: "used clothes",
      amount: 40.00,
      date: DateTime.now(),
    ),
  ];

  void _addnewtransaction(String txtitle, double txamount) {
    final newTX = Transaction(
        id: DateTime.now().toString(),
        title: txtitle,
        amount: txamount,
        date: DateTime.now()
    );
    setState(() {
      _usertransactions.add(newTX);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addnewtransaction),
        Transactionlist(_usertransactions),
      ],
    );
  }
}
