import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {

  static const name = 'progress';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Indicadores de Progreso'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          SizedBox(height: 30,),
          Text('Circular Progress Indicator'),
          SizedBox(height: 20,),
          CircularProgressIndicator(strokeWidth: 2, backgroundColor: Colors.black38,),
          SizedBox(height: 20,),
          Text('Progress Indicator Controlado'),
          SizedBox(height: 20,),
          _ControllerProgressIndicator()
        ],
      ),
    );
  }
}

class _ControllerProgressIndicator extends StatelessWidget {
  const _ControllerProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}