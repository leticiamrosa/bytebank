import 'package:bytebank/payments/model/transaction.dart';
import 'package:bytebank/payments/presentation/screens/transfer_screen.dart';
import 'package:bytebank/payments/presentation/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  static const primaryColor = Color.fromARGB(255, 21, 63, 177);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const TransactionList(),
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          'Transferencias',
          style: TextStyle(
              color: Colors.white), // Definindo a cor do texto para vermelho
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future<Transaction?> future =
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const TransferScreen();
          }));

          future.then((onValue) {
            debugPrint('chegou no future');
            debugPrint('$onValue');
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
