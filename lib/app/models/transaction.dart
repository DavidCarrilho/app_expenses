import 'package:flutter/foundation.dart';

class Transaction {
  final String id;
  final String title;
  final double value;
  final String date;

  Transaction({
    @required this.id,
    @required this.title,
    @required this.value,
    @required this.date,
  });
}
