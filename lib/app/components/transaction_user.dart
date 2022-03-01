import 'dart:math';

import 'package:expenses/app/components/trabsaction_list.dart';
import 'package:expenses/app/components/transactions_form.dart';
import 'package:expenses/app/models/models.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final List<Transaction> _transactions = [
    Transaction(
      id: 't1',
      title: 'Nova Camisa',
      value: 120.90,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Cinema',
      value: 60.90,
      date: DateTime.now(),
    )
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionForm(onSubmit: _addTransaction),
        TransactionList(transactions: _transactions),
      ],
    );
  }
}