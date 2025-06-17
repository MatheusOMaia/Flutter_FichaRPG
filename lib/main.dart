import 'package:flutter/material.dart';
import 'tela_inicial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Ficha RPG OP",
      home: TelaInicial(),
    );
  }
}