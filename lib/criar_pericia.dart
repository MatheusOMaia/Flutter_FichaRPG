import 'dart:io';

import 'package:flutter/material.dart';
import 'ficha.dart';

import 'ficha_feita.dart';


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
  Status status = Status(20, 15, 5, 5, 10, 0, 0, 0);

  final List<String> nomesPericias = [
    "atletismo", "luta",
    "adestramento", "artes", "diplomacia", "enganaco", "intimidacao", "intuicao", "percepcao", "religiao", "vontade",
    "atualidades", "ciencias", "investigacao", "medicina", "ocultismo", "profissao", "sobrevivencia", "tatica", "tecnologia",
     "acrobacia", "crime", "furtividade", "iniciativa", "pilotagem", "pontaria", "reflexos",
     "fortitude",
  ];
  String? periciaEscolhida;
  int? valorEscolhido;

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

  bool _avancarSeValido(Ficha? ficha) {
    if (ficha?.nome_personagem == "" && ficha?.classepersonagem == "" && ficha?.origem == ""){
      return false;
    }
    return true;
  }




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
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                    children: [
                      DropdownButton<String>(
                        hint: Text("Selecione a pericia"),
                        value: periciaEscolhida,
                        items: nomesPericias.map((String nomePericia) {
                        return DropdownMenuItem<String>(
                            value: nomePericia,
                            child: Text(nomePericia.toUpperCase()),
                        );
                        }).toList(),
                        onChanged: (String? novaPericia) {
                          setState(() {
                          periciaEscolhida = novaPericia;
                          });
                        },
                      ),
                      SizedBox(height: 20),

                      // Segundo Dropdown: Escolher o valor (exemplo: de 0 a 10)
                      if (periciaEscolhida!= null)
                        DropdownButton<int>(
                          hint: Text('Selecione o valor'),
                          value: valorEscolhido,
                          items: List.generate(6, (index) => index).map((int valor) {
                            return DropdownMenuItem<int>(
                              value: valor,
                              child: Text(valor.toString()),
                            );
                          }).toList(),
                          onChanged: (int? novoValor) {
                            setState(() {
                              valorEscolhido = novoValor;
                            });
                          },
                        ),

                      SizedBox(height: 30),

                      ElevatedButton(
                        onPressed: (periciaEscolhida != null && valorEscolhido != null)
                            ? () {
                                // Atualizando o valor da pericia
                                setState(() {
                                  switch (periciaEscolhida) {
                                      case 'atletismo':
                                        pericias.atletismo = valorEscolhido!;
                                        break;
                                      case "adestramento":
                                        pericias.adestramento = valorEscolhido!;
                                        break;
                                      case 'artes':
                                        pericias.artes = valorEscolhido!;
                                        break;
                                      case 'diplomacia':
                                        pericias.diplomacia = valorEscolhido!;
                                        break;
                                      case 'enganacao':
                                        pericias.enganacao = valorEscolhido!;
                                        break;
                                      case "intuicao" :
                                        pericias.intuicao = valorEscolhido!;
                                        break;
                                      case "percepcao" :
                                        pericias.percepcao = valorEscolhido!;
                                        break;
                                      case 'intimidacao':
                                        pericias.intimidacao = valorEscolhido!;
                                        break;
                                      case 'religiao':
                                        pericias.religiao = valorEscolhido!;
                                        break;
                                      case 'vontade':
                                        pericias.vontade = valorEscolhido!;
                                        break;
                                      case 'atualidades':
                                        pericias.atualidades = valorEscolhido!;
                                        break;
                                      case 'ciencias':
                                        pericias.ciencias = valorEscolhido!;
                                        break;
                                      case "investigação" :
                                        pericias.investigacao = valorEscolhido!;
                                        break;
                                      case "medicina" :
                                        pericias.medicina = valorEscolhido!;
                                        break;
                                      case "ocultismo" :
                                        pericias.ocultismo = valorEscolhido!;
                                        break;
                                      case "profissao" :
                                        pericias.profissao = valorEscolhido!;
                                        break;
                                      case "sobrevivencia" :
                                        pericias.sobrevivencia = valorEscolhido!;
                                        break;
                                      case "tatica" :
                                        pericias.tatica = valorEscolhido!;
                                        break;
                                      case "tecnologia" :
                                        pericias.tecnologia = valorEscolhido!;
                                        break;
                                      case "acrobacia" :
                                        pericias.acrobacia = valorEscolhido!;
                                        break;
                                      case "crime" :
                                        pericias.crime = valorEscolhido!;
                                        break;
                                      case "furtividade" :
                                        pericias.furtividade = valorEscolhido!;
                                        break;
                                      case "iniciativa" :
                                        pericias.iniciativa = valorEscolhido!;
                                        break;
                                      case "pilotagem" :
                                        pericias.pilotagem = valorEscolhido!;
                                        break;
                                      case "pontaria" :
                                        pericias.pontaria = valorEscolhido!;
                                        break;
                                      case "reflexos" :
                                        pericias.reflexos = valorEscolhido!;
                                        break;
                                      case "fortitude" :
                                        pericias.fortitude = valorEscolhido!;
                                        break;
                      }
                      });
                      CriarFicha();

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Atributo ${periciaEscolhida!.toUpperCase()} atualizado para $valorEscolhido')),
                      );
                      }
                          : null,
                        child: Text('SALVAR'),
                      ),
                    ],
                ),
              ),
              _avancarSeValido(ficha)?
              ElevatedButton(child: Text("Confirmar e finalizar ficha de personagem"),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FichaFeita(ficha: ficha)),
                  );
                },
              )
                  : Text("Altere pelo menos um atributo")
            ]
          )
        )
      );
    }
  }
