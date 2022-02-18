import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
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
            Card(
              child: Text('Lista de Transações'),
              elevation: 5.0,
            )
          ],
        ),
      ),
    );
  }
}
