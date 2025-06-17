import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_ficha_rpg/ficha.dart';


class CriarPericia extends StatefulWidget {
   final Atributos atributos;
   CriarPericia({super.key, required this.atributos});

  @override
  State<CriarPericia> createState() => _CriarPericiaState();
}

class _CriarPericiaState extends State<CriarPericia> {
  //String nome = "";
 // String origem = "";
  Pericias pericias = Pericias(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  Status status = Status(0, 0, 0, 0, 0, 0, 0, 0);

  Ficha? ficha;

  void CriarFicha(){
    String nome = _nomePersonagemController.text;
    String origem = _origemController.text;
    String classe = _classeController.text;

    setState(() {
      ficha = Ficha(nome, origem, classe, widget.atributos, pericias, status);
    });

  }


  final TextEditingController _nomePersonagemController = TextEditingController();
  final TextEditingController _origemController = TextEditingController();
  final TextEditingController _classeController = TextEditingController();

  String resultado = "";




  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text('Personagem e Perícias')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _nomePersonagemController,
                decoration: InputDecoration(labelText: 'Nome Personagem'),
              ),
              TextField(
                controller: _origemController,
                decoration: InputDecoration(labelText: "Origem"),
              ),
              TextField(
                controller: _classeController,
                decoration: InputDecoration(labelText: "Classe"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: CriarFicha,
                child: Text('Salvar'),
              ),
              SizedBox(height: 20),
              Text(
              "${ficha}",
              style: TextStyle(fontSize: 18),
              )],
          ),
        ),
      );
    }
  }
