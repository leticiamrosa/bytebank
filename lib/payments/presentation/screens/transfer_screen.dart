import 'package:bytebank/payments/presentation/widgets/transfer_form.dart';
import 'package:flutter/material.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({super.key});

  static const primaryColor = Color.fromARGB(255, 21, 63, 177);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TransferForm(),
      appBar: AppBar(
        backgroundColor: primaryColor,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'Transferir',
          style: TextStyle(
              color: Colors.white), // Definindo a cor do texto para vermelho
        ),
      ),
    );
  }
}
