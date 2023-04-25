import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = 'snackbar';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {

    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: (){}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) { 
        return AlertDialog(
          title: const Text('¿Estas Seguro?'),
          content: const Text('Cillum commodo adipisicing officia ut. Sint nisi magna do aliquip ullamco ad non eu consequat esse. Qui dolore in veniam ad nisi quis non dolore nostrud duis ex voluptate amet eu.'),
          actions: [
            TextButton(onPressed: () => context.pop(), child: const Text('Cancelar')),
            FilledButton(onPressed: () => context.pop(), child: const Text('Aceptar')),
          ],
        );
       }, 
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Dolore aliqua quis ullamco exercitation aute velit quis minim officia excepteur tempor consectetur. Ipsum ut Lorem labore elit. Anim voluptate aute amet minim Lorem id ullamco do magna minim. Officia Lorem cupidatat nisi esse Lorem est veniam non excepteur.')
                  ]
                );
              }, 
              child: const Text('Licencias Usadas'),
            ),
            FilledButton(
              onPressed: () => openDialog(context), 
              child: const Text('Mostrar Dialogo'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context), 
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
} 