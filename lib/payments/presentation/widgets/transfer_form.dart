import 'package:flutter/material.dart';

class TransferForm extends StatelessWidget {
  const TransferForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          child: TextField(
            style: TextStyle(fontSize: 24.0),
            decoration:
                InputDecoration(labelText: 'Numero conta', hintText: '0000'),
            keyboardType: TextInputType.number,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 4.0),
          child: TextField(
            style: TextStyle(fontSize: 24.0),
            decoration: InputDecoration(
                labelText: 'Valor',
                hintText: '0.00',
                icon: Icon(Icons.monetization_on)),
            keyboardType: TextInputType.number,
          ),
        ),
        // ElevatedButton(
        //   onPressed: () {},
        //   child: Text('confirmar'),
        // )
      ],
    );
  }
}
