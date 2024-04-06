import 'package:bytebank/payments/model/transaction.dart';
import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard(this.transaction, {super.key});

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: const Icon(Icons.monetization_on),
      title: Text(transaction.value.toString()),
      subtitle: Text(transaction.accountNumber.toString()),
    ));
  }
}
