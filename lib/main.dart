import 'package:bytebank/payments/presentation/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

const primaryColor = Color.fromARGB(255, 8, 122, 4);

void main() {
  runApp(MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Transferências'),
            backgroundColor: primaryColor,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          body: const TransactionList())));
}
