import 'package:bytebank/payments/model/transaction.dart';
import 'package:bytebank/payments/presentation/widgets/transaction_input.dart';
import 'package:flutter/material.dart';

class TransferForm extends StatelessWidget {
  final TextEditingController controllerValueField = TextEditingController();

  final TextEditingController controllerAccountNumberField =
      TextEditingController();

  TransferForm({super.key});

  void createTransfer() {
    final int? accountNumber = int.tryParse(controllerAccountNumberField.text);
    final double? value = double.tryParse(controllerValueField.text);

    if (accountNumber != null && value != null) {
      final newTransaction = Transaction(value, accountNumber);
      debugPrint('$newTransaction');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionInput(
            controller: controllerAccountNumberField,
            labelText: 'Numero conta',
            hintText: '0000'),
        TransactionInput(
          controller: controllerValueField,
          labelText: 'Valor',
          hintText: '0.00',
          icon: const Icon(Icons.monetization_on),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
          child: ElevatedButton(
            onPressed: () {
              createTransfer();
            },
            child: const Text('Confirmar'),
          ),
        )
      ],
    );
  }
}
