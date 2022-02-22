import 'package:expenses/app/components/components.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
          TransactionUser(),
        ],
      ),
    );
  }
}
