import 'package:bytebank/payments/model/transaction.dart';
import 'package:bytebank/payments/presentation/widgets/transaction_card.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TransactionCard(Transaction(100, 35602)),
        TransactionCard(Transaction(200, 35601)),
        TransactionCard(Transaction(300, 35603)),
        TransactionCard(Transaction(400, 35606)),
      ],
    );
  }
}
