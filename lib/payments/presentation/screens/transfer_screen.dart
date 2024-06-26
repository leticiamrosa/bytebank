import 'package:bytebank/payments/presentation/widgets/transfer_form.dart';
import 'package:flutter/material.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const TransferForm(),
      appBar: AppBar(
        title: const Text(
          'Transferir',
          style: TextStyle(
              color: Colors.white), // Definindo a cor do texto para vermelho
        ),
      ),
    );
  }
}
