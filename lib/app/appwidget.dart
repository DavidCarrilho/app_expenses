import 'package:expenses/app/models/export.dart';
import 'package:expenses/app/pages/pages.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  final List<Transaction> _trasactions = [
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
