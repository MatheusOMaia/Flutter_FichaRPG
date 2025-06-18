import 'package:flutter/material.dart';
import 'ficha.dart';


class FichaFeita extends StatelessWidget {
  final Ficha? ficha;
  FichaFeita({super.key, required this.ficha});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text("Nome do Personagem : ${ficha?.nome_personagem}")
              ],
            ),
            Row(),
            Row(),
          ],
        ),
      )
    );
  }
}
