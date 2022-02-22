import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Titulo'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Valor (Rz\$)',
              ),
              controller: valueController,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: FlatButton(
                onPressed: () {
                  developer.log(titleController.text);
                  developer.log(valueController.text);
                },
                color: Colors.purple,
                textColor: Colors.white,
                child: Text('Nova Transação'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
