import 'package:expenses/app/components/trabsaction_list.dart';
import 'package:expenses/app/components/transactions_form.dart';
import 'package:expenses/app/models/models.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({Key key}) : super(key: key);

  @override
  _TransactionUserState createState() => _TransactionUserState();
}

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

class _TransactionUserState extends State<TransactionUser> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(transactions: _transactions),
        TransactionForm(),
      ],
    );
  }
}
