import 'package:bytebank/payments/presentation/screens/transactions_screen.dart';
import 'package:flutter/material.dart';

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
          primaryColor: primaryColor,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.blue.shade700,
            elevation: 4.0,
            shadowColor: Theme.of(context).colorScheme.shadow,
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue.shade800,
          ),
        ),
        home: const Scaffold(body: TransactionsScreen()));
  }
}
