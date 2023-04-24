import 'package:flutter/material.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

void main() {
   runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getTheme(),
      home: const Scaffold(
        body: Center(
          child: Text('Hola desde Widgets'),
        ),
      ),
    );
  }
}