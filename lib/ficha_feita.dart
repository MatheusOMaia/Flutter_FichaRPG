import 'package:flutter/material.dart';
import 'ficha.dart';

class FichaFeita extends StatelessWidget {
  final Ficha? ficha;

  const FichaFeita({super.key, required this.ficha});

  @override
  Widget build(BuildContext context) {
    if (ficha == null) {
      return const Scaffold(
        body: Center(
          child: Text("Nenhuma ficha carregada."),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Ficha do Personagem"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nome: ${ficha!.nome_personagem}", style: _titleStyle),
            Text("Origem: ${ficha!.origem}", style: _defaultStyle),
            Text("Classe: ${ficha!.classepersonagem}", style: _defaultStyle),
            const SizedBox(height: 20),

            Text("Atributos", style: _sectionTitle),
            Text("Força: ${ficha!.atributos.forca}", style: _defaultStyle),
            Text("Agilidade: ${ficha!.atributos.agilidade}", style: _defaultStyle),
            Text("Intelecto: ${ficha!.atributos.intelecto}", style: _defaultStyle),
            Text("Vigor: ${ficha!.atributos.vigor}", style: _defaultStyle),
            Text("Presença: ${ficha!.atributos.presenca}", style: _defaultStyle),
            const SizedBox(height: 20),

            Text("Status", style: _sectionTitle),
            Text("Vida: ${ficha!.status.vida}", style: _defaultStyle),
            Text("Determinação: ${ficha!.status.determincao}", style: _defaultStyle),
            Text("Defesa: ${ficha!.status.defesa}", style: _defaultStyle),
            Text("Bloqueio: ${ficha!.status.bloqueio}", style: _defaultStyle),
            Text("Esquiva: ${ficha!.status.esquiva}", style: _defaultStyle),
            Text("Proteção: ${ficha!.status.protecao}", style: _defaultStyle),
            Text("Resistências: ${ficha!.status.resistencias}", style: _defaultStyle),
            Text("Proficiências: ${ficha!.status.proficiencias}", style: _defaultStyle),
            const SizedBox(height: 20),

            Text("Perícias", style: _sectionTitle),
            Text("Atletismo: ${ficha!.pericias.atletismo}", style: _defaultStyle),
            Text("Luta: ${ficha!.pericias.luta}", style: _defaultStyle),
            Text("Adestramento: ${ficha!.pericias.adestramento}", style: _defaultStyle),
            Text("Artes: ${ficha!.pericias.artes}", style: _defaultStyle),
            Text("Diplomacia: ${ficha!.pericias.diplomacia}", style: _defaultStyle),
            Text("Enganação: ${ficha!.pericias.enganacao}", style: _defaultStyle),
            Text("Intimidação: ${ficha!.pericias.intimidacao}", style: _defaultStyle),
            Text("Intuição: ${ficha!.pericias.intuicao}", style: _defaultStyle),
            Text("Percepção: ${ficha!.pericias.percepcao}", style: _defaultStyle),
            Text("Religião: ${ficha!.pericias.religiao}", style: _defaultStyle),
            Text("Vontade: ${ficha!.pericias.vontade}", style: _defaultStyle),
            Text("Atualidades: ${ficha!.pericias.atualidades}", style: _defaultStyle),
            Text("Ciências: ${ficha!.pericias.ciencias}", style: _defaultStyle),
            Text("Investigação: ${ficha!.pericias.investigacao}", style: _defaultStyle),
            Text("Medicina: ${ficha!.pericias.medicina}", style: _defaultStyle),
            Text("Ocultismo: ${ficha!.pericias.ocultismo}", style: _defaultStyle),
            Text("Profissão: ${ficha!.pericias.profissao}", style: _defaultStyle),
            Text("Sobrevivência: ${ficha!.pericias.sobrevivencia}", style: _defaultStyle),
            Text("Tática: ${ficha!.pericias.tatica}", style: _defaultStyle),
            Text("Tecnologia: ${ficha!.pericias.tecnologia}", style: _defaultStyle),
            Text("Acrobacia: ${ficha!.pericias.acrobacia}", style: _defaultStyle),
            Text("Crime: ${ficha!.pericias.crime}", style: _defaultStyle),
            Text("Furtividade: ${ficha!.pericias.furtividade}", style: _defaultStyle),
            Text("Iniciativa: ${ficha!.pericias.iniciativa}", style: _defaultStyle),
            Text("Pilotagem: ${ficha!.pericias.pilotagem}", style: _defaultStyle),
            Text("Pontaria: ${ficha!.pericias.pontaria}", style: _defaultStyle),
            Text("Reflexos: ${ficha!.pericias.reflexos}", style: _defaultStyle),
            Text("Fortitude: ${ficha!.pericias.fortitude}", style: _defaultStyle),
          ],
        ),
      ),
    );
  }

  TextStyle get _titleStyle => const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      );

  TextStyle get _sectionTitle => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.indigo,
        height: 2,
      );

  TextStyle get _defaultStyle => const TextStyle(fontSize: 16);
}
