import 'package:expenses/app/models/export.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Card(
            child: Text('Gráfico'),
            elevation: 5.0,
            color: Colors.blue,
          ),
          Column(
            children: _trasactions.map(
              (tr) {
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
                            color: Colors.purple,
                            width: 2.0,
                          ),
                        ),
                        child: Text(
                          'R\$ ${tr.value.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            tr.title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            // '${tr.date.day}/${tr.date.month}/${tr.date.year}',
                            DateFormat('d/MM/y').format(tr.date),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ).toList(),
          ),
          Card(
            elevation: 5.0,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Titulo'),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Valor (Rz\$)',
                    ),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //   children: <Widget>[
                  //     FlatButton(
                  //       onPressed: () {},
                  //       color: Colors.purple,
                  //       textColor: Colors.white,
                  //       child: Text('Nova Transação'),
                  //     ),
                  //   ],
                  // )
                  Align(
                    alignment: Alignment.bottomRight,
                    child:   FlatButton(
                        onPressed: () {},
                        color: Colors.purple,
                        textColor: Colors.white,
                        child: Text('Nova Transação'),
                      ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
