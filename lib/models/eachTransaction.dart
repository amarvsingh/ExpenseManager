import 'package:flutter/foundation.dart';

class EachTransaction{
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  EachTransaction({
    @required this.id,
    @required this.title,
    @required this.amount,
    @required this.date,
  });
}