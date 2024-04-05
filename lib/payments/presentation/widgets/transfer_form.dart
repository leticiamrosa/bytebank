import 'package:bytebank/payments/model/transaction.dart';
import 'package:flutter/material.dart';

class TransferForm extends StatelessWidget {
  final TextEditingController controllerValueField = TextEditingController();

  final TextEditingController controllerAccountNumberField =
      TextEditingController();

  TransferForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          child: TextField(
            style: const TextStyle(fontSize: 24.0),
            decoration: const InputDecoration(
                labelText: 'Numero conta', hintText: '0000'),
            keyboardType: TextInputType.number,
            controller: controllerAccountNumberField,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 4.0),
          child: TextField(
            style: const TextStyle(fontSize: 24.0),
            decoration: const InputDecoration(
                labelText: 'Valor',
                hintText: '0.00',
                icon: Icon(Icons.monetization_on)),
            keyboardType: TextInputType.number,
            controller: controllerValueField,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
          child: ElevatedButton(
            onPressed: () {
              final int? accountNumber =
                  int.tryParse(controllerAccountNumberField.text);
              final double? value = double.tryParse(controllerValueField.text);

              if (accountNumber != null && value != null) {
                final newTransaction = Transaction(value, accountNumber);
                debugPrint('$newTransaction');
              }
            },
            child: const Text('Confirmar'),
          ),
        )
      ],
    );
  }
}
