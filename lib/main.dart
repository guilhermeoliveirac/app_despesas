import 'package:expenses/Model/transaction.dart';
import 'package:flutter/material.dart';

main()=> runApp(EspensesApp());

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
    Transaction(identidade: 't1', data: DateTime.now(), value: 300.90, title: 'TENIS'),
    Transaction(identidade: 't2', data: DateTime.now(), value: 230, title: 'Blusa'),
  ];
  //const MyHomePage({super.key});

 

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
          Card(child: Text('Lista de transações '),
          elevation: 5,)
        ],
      )
    );
  }
}