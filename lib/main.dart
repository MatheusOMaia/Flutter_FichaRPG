import 'package:flutter/material.dart';
import 'tela_inicial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ficha RPG OP",
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 88, 12, 12), // Fundo vermelho escuro

        // Estilo global para campos de texto
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.white), // Label (placeholder)
          hintStyle: TextStyle(color: Colors.white),  // Dica interna
          filled: true,
          fillColor: Colors.transparent,
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2),
          ),
        ),

        // Texto geral
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
          labelLarge: TextStyle(color: Colors.white),
        ),

        // AppBar com texto branco
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),

        // Botões e Dropdowns
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, // Texto do botão
            backgroundColor: Colors.black, // Fundo do botão
          ),
        ),

        // Tema para Dropdown
        dropdownMenuTheme: const DropdownMenuThemeData(
          textStyle: TextStyle(color: Colors.white),
        ),

        // Tema global para IconButton ou ícones
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      home: const TelaInicial(),
    );
  }
}
