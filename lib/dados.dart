import 'package:flutter/material.dart';
import 'dart:math';

class TelaDados extends StatefulWidget {
  const TelaDados({super.key});

  @override
  State<TelaDados> createState() => _TelaDadosState();
}

class _TelaDadosState extends State<TelaDados> {
  final Random _random = Random();
  String _resultado = "";

  void _rolarDado(int lados) {
    setState(() {
      int valor = _random.nextInt(lados) + 1;
      _resultado = "Resultado do D$lados: $valor";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rolar Dados"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _dadoButton("D4", 4),
                _dadoButton("D6", 6),
                _dadoButton("D8", 8),
                _dadoButton("D10", 10),
                _dadoButton("D12", 12),
                _dadoButton("D20", 20),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              _resultado,
              style: const TextStyle(fontSize: 24),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Volta para a tela anterior
              },
              child: const Text("Voltar para Tela Inicial"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _dadoButton(String label, int lados) {
    return ElevatedButton(
      onPressed: () => _rolarDado(lados),
      child: Text(label),
    );
  }
}
