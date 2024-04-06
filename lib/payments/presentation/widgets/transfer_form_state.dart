import 'package:bytebank/payments/model/transaction.dart';
import 'package:bytebank/payments/presentation/widgets/transaction_input.dart';
import 'package:bytebank/payments/presentation/widgets/transfer_form.dart';
import 'package:flutter/material.dart';

class TransactionFormState extends State<TransferForm> {
  final TextEditingController controllerValueField = TextEditingController();

  final TextEditingController controllerAccountNumberField =
      TextEditingController();

  String accountNumber = '';
  String? value = '';

  void updateTransfer(newAccountNumber, newValue) {
    setState(() {
      accountNumber = newAccountNumber;
      value = newValue;
    });
  }

  void createTransfer(BuildContext context) {
    final int? accountNumber = int.tryParse(controllerAccountNumberField.text);
    final double? value = double.tryParse(controllerValueField.text);

    updateTransfer(
        controllerAccountNumberField.text, controllerValueField.text);

    Future.delayed(const Duration(milliseconds: 250), () {
      if (accountNumber != null && value != null) {
        final newTransaction = Transaction(value, accountNumber);

        Navigator.pop(context, newTransaction);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
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
                createTransfer(context);
              },
              child: const Text('Confirmar'),
            ),
          )
        ],
      ),
    );
  }
}
