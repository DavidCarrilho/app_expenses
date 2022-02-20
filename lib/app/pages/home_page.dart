import 'package:expenses/app/models/export.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Card(
            child: Text('Gráfico'),
            elevation: 5.0,
            color: Colors.blue,
          ),
          Column(
            children: _trasactions.map((tr) {
              return Card(
                  child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 10.0,
                    ),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                      )
                    ),
                    
                    child: Text(tr.value.toString()),
                  ),
                  Column(
                    children: <Widget>[
                      Text(tr.title),
                      Text(tr.date.toString()),
                    ],
                  )
                ],
              ));
            }).toList(),
          )
        ],
      ),
    );
  }
}
