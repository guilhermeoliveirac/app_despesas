import 'package:expenses/Model/transaction.dart';
import 'package:flutter/material.dart';

main() => runApp(EspensesApp());

class EspensesApp extends StatelessWidget {
  const EspensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final _transactions = [
    Transaction(
        identidade: 't1', data: DateTime.now(), value: 300.90, title: 'Tênis'),
    Transaction(
        identidade: 't2', data: DateTime.now(), value: 230, title: 'Blusa'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Despesas Pessoais'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('Gráfico'),
                elevation: 5,
              ),
            ),
            Column(
              children: _transactions.map((tr) {
                return Card(
                  child: Row(children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.black,
                        width: 2,
                      )),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        tr.value.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tr.title,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          tr.data.toString(),
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    )
                  ]),
                );
              }).toList(),
            )
          ],
        ));
  }
}
