import 'package:bytebank/payments/model/transaction.dart';
import 'package:bytebank/payments/presentation/screens/transfer_screen.dart';
import 'package:bytebank/payments/presentation/widgets/transaction_card.dart';
import 'package:bytebank/payments/presentation/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class TransactionListState extends State<TransactionList> {
  final List<Transaction> transactions = [];

  void onPressedFloatingActionButton(BuildContext context) {
    final Future<Transaction?> future =
        Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const TransferScreen();
    }));

    future.then((newTransaction) {
      if (newTransaction != null) {
        setState(() {
          transactions.add(newTransaction);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          final Transaction transaction = transactions[index];

          return TransactionCard(transaction);
        },
      ),
      appBar: AppBar(
        title: const Text(
          'Transferencias',
          style: TextStyle(
              color: Colors.white), // Definindo a cor do texto para vermelho
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => onPressedFloatingActionButton(context),
        child: const Icon(Icons.add),
      ),
    );
  }
}
