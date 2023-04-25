import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {

  static const name = 'riverpod';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Gestor de Estados'),
      ),
      body: Center(
        child: Text('Valor: 10', style: Theme.of(context).textTheme.titleLarge,),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add),
      ),
    );
  }
}