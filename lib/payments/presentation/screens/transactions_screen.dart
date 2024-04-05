import 'package:bytebank/payments/presentation/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  static const primaryColor = Color.fromARGB(255, 8, 122, 4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const TransactionList(),
      appBar: AppBar(
        title: const Text(
          'Transferencias',
          style: TextStyle(
              color: Colors.white), // Definindo a cor do texto para vermelho
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
