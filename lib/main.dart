import 'package:bytebank/payments/presentation/screens/transactions_screen.dart';
import 'package:flutter/material.dart';

const primaryColor = Color.fromARGB(255, 8, 122, 4);

void main() {
  runApp(const BytebankApp());
}

class BytebankApp extends StatelessWidget {
  const BytebankApp({super.key});

  static const primaryColor = Color.fromARGB(255, 21, 63, 177);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            elevation: 4.0,
            shadowColor: Theme.of(context).colorScheme.shadow,
          ),
        ),
        home: const Scaffold(body: TransactionsScreen()));
  }
}
