import 'package:fin_tech/views/transaction_all_tab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Transactions(),
  ));
}

class Transactions extends StatefulWidget {
  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TransactionAllTab(),
    );
  }
}
