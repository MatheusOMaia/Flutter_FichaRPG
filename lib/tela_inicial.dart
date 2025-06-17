import 'package:flutter/material.dart';
import 'criar_ficha.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela_inicial"),
      ),
      body: Center(
        child: ElevatedButton(child: const Text("Criar Ficha"),
          onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CriarFicha()),
          );
          },
        ),
      ),
    );
  }
}
