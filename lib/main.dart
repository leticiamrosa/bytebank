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
          body: const Column(
            children: [
              Card(
                  child: ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text(('100.0')),
                subtitle: Text('1000'),
              )),
              Card(
                  child: ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text(('200.0')),
                subtitle: Text('1000'),
              )),
              Card(
                  child: ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text(('400.0')),
                subtitle: Text('1000'),
              )),
            ],
          ))));
}
