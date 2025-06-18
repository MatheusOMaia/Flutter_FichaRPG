import 'package:flutter/material.dart';
import 'criar_ficha.dart';
import 'dados.dart'; // Importa a tela de rolar dados

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela Inicial"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Criar Ficha"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CriarFicha()),
                );
              },
            ),
            const SizedBox(height: 20), // Espaçamento entre os botões
            ElevatedButton(
              child: const Text("Rolar Dados"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TelaDados()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
