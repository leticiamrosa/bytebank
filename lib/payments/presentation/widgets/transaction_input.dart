import 'package:flutter/material.dart';

class TransactionInput extends StatelessWidget {
  const TransactionInput(
      {super.key,
      required this.controller,
      required this.labelText,
      required this.hintText,
      this.icon});

  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
      child: TextField(
        style: const TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
            labelText: labelText, hintText: hintText, icon: icon),
        keyboardType: TextInputType.number,
        controller: controller,
      ),
    );
  }
}
