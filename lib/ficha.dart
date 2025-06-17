import 'package:flutter/material.dart';

class Ficha{
  String nome_personagem = "";
  String origem = "";
  String classepersonagem = "";

  Atributos atributos;

  @override
  String toString() {
    return 'Ficha{nome_personagem: $nome_personagem, origem: $origem, classepersonagem: $classepersonagem, \n\natributos: $atributos, \n\n\npericias: $pericias, \n\nstatus: $status}';
  }

  Pericias pericias;
  Status status;

  Ficha(this.nome_personagem, this.origem, this.classepersonagem,
      this.atributos, this.pericias, this.status);


}

class Atributos{
  int forca = 0, agilidade = 0, intelecto = 0, vigor = 0, presenca = 0;

  Atributos(this.forca, this.agilidade, this.intelecto, this.vigor,
      this.presenca);

  @override
  String toString() {
    return 'Atributos{forca: $forca, agilidade: $agilidade, intelecto: $intelecto, vigor: $vigor, presenca: $presenca}';
  }

}

class Status{
  int vida = 0, determincao = 0, defesa = 0, bloqueio = 0, esquiva = 0, protecao = 0, resistencias = 0, proficiencias = 0;

  Status(this.vida, this.determincao, this.defesa, this.bloqueio, this.esquiva,
      this.protecao, this.resistencias, this.proficiencias);

  @override
  String toString() {
    return 'Status{vida: $vida, determincao: $determincao, defesa: $defesa, bloqueio: $bloqueio, esquiva: $esquiva, protecao: $protecao, resistencias: $resistencias, proficiencias: $proficiencias}';
  }


}

class Pericias{
  int atletismo = 0, luta = 0;//pericias força
  int adestramento = 0, artes = 0, diplomacia = 0, enganacao = 0, intimidacao = 0, intuicao = 0, percepcao = 0, religiao = 0, vontade = 0;//pericias presença
  int atualidades = 0, ciencias = 0, investigacao = 0, medicina = 0, ocultismo = 0, profissao = 0, sobrevivencia = 0, tatica = 0, tecnologia = 0; //pericias intelecto
  int acrobacia = 0, crime = 0, furtividade = 0, iniciativa = 0, pilotagem = 0, pontaria = 0, reflexos = 0; // agilidade
  int fortitude = 0;

  Pericias(this.atletismo, this.luta, this.adestramento, this.artes,
      this.diplomacia, this.enganacao, this.intimidacao, this.intuicao,
      this.percepcao, this.religiao, this.vontade, this.atualidades,
      this.ciencias, this.investigacao, this.medicina, this.ocultismo,
      this.profissao, this.sobrevivencia, this.tatica, this.tecnologia,
      this.acrobacia, this.crime, this.furtividade, this.iniciativa,
      this.pilotagem, this.pontaria, this.reflexos, this.fortitude);

  @override
  String toString() {
    return 'Pericias{atletismo: $atletismo, luta: $luta, adestramento: $adestramento, artes: $artes, diplomacia: $diplomacia, enganacao: $enganacao, intimidacao: $intimidacao, intuicao: $intuicao, percepcao: $percepcao, religiao: $religiao, vontade: $vontade, atualidades: $atualidades, ciencias: $ciencias, investigacao: $investigacao, medicina: $medicina, ocultismo: $ocultismo, profissao: $profissao, sobrevivencia: $sobrevivencia, tatica: $tatica, tecnologia: $tecnologia, acrobacia: $acrobacia, crime: $crime, furtividade: $furtividade, iniciativa: $iniciativa, pilotagem: $pilotagem, pontaria: $pontaria, reflexos: $reflexos, fortitude: $fortitude}';
  } //vigor
}


