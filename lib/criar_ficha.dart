import 'package:flutter/material.dart';
import 'criar_pericia.dart';
import 'ficha.dart';

class CriarFicha extends StatefulWidget {

  @override
  State<CriarFicha> createState() => _CriarFichaState();
}

class _CriarFichaState extends State<CriarFicha> {


  Atributos atributos = Atributos(0, 0, 0, 0, 0);


  bool _avancarSeValido(Atributos atributos) {
    if (atributos.agilidade == 0 && atributos.vigor == 0 && atributos.forca == 0 && atributos.intelecto == 0 && atributos.presenca == 0)
    {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Escolha seus Atributos"),
      ),
      body: Center(
        child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                            Row(
                              children: [
                                Text("AGI",style: TextStyle(fontSize: 35)),
                              ],
                            ),
                            Row(children: [DropdownButton<int>(    //Widget do Dropdown, Atualiza o Atributo
                                hint: Text('-'),
                                style: TextStyle(color: Colors.blue, fontSize: 30),
                                value: atributos.agilidade,
                                items: List.generate(6, (index) => index) // Lista de 0 a 5
                                    .map((number) => DropdownMenuItem<int>(
                                  value: number,
                                  child: Text("$number"),)).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    atributos.agilidade = value!;
                                  });},)]),
                        Row(    //linha FOR INT
                          children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              child: Column(//COLUNA FOR 2
                                children: [Row(children: [Text("FOR", style: TextStyle(fontSize: 35))]),
                                          DropdownButton<int>(    //Widget do Dropdown, Atualiza o Atributo
                                            hint: Text('-'),
                                            style: TextStyle(color: Colors.blue, fontSize: 30),
                                            value: atributos.forca,
                                            items: List.generate(6, (index) => index) // Lista de 0 a 5
                                            .map((number) => DropdownMenuItem<int>(
                                              value: number,
                                              child: Text("$number"),)).toList(),
                                              onChanged: (value) {
                                              setState(() {
                                                atributos.forca = value!;
                                              });},
                                          ),
                                ]
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              child: Column( //COLUNA INT 1
                                children: [
                                  Row(children: [Text("INT",style: TextStyle(fontSize: 35)),]),
                                  Row(children: [
                                    DropdownButton<int>(    //Widget do Dropdown, Atualiza o Atributo
                                      hint: Text('-'),
                                      style: TextStyle(color: Colors.blue, fontSize: 30),
                                      value: atributos.intelecto,
                                      items: List.generate(6, (index) => index) // Lista de 0 a 5
                                          .map((number) => DropdownMenuItem<int>(
                                        value: number,
                                        child: Text("$number"),
                                      ))
                                          .toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          atributos.intelecto = value!;
                                        });
                                      },
                                    ),
                                  ],),])
                                          //Row(children: [Text("1", style: TextStyle(fontSize: 35))]),],
                              ),
                          ],
                        ),
                        Row( //LINHA PRE VIG
                          children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              child: Column( //COLUNA PRE 3
                                children: [Row(children: [Text("PRE",style: TextStyle(fontSize: 35)),]),
                                            DropdownButton<int>(    //Widget do Dropdown, Atualiza o Atributo
                                              hint: Text('-'),
                                              style: TextStyle(color: Colors.blue, fontSize: 30),
                                              value: atributos.presenca,
                                              items: List.generate(6, (index) => index) // Lista de 0 a 5
                                              .map((number) => DropdownMenuItem<int>(
                                                value: number,
                                                child: Text("$number"),)).toList(),
                                              onChanged: (value) {
                                                setState(() {
                                                  atributos.presenca = value!;
                                                });},
                                            )
                                            ]
                              ),
                            ),
                            Container(padding: EdgeInsets.all(20),
                              child: Column( //COLUNA VIG 4
                                children: [Row(children: [Text("VIG",style: TextStyle(fontSize: 35)),]),
                                            DropdownButton<int>(    //Widget do Dropdown, Atualiza o Atributo
                                              hint: Text('-'),
                                              style: TextStyle(color: Colors.blue, fontSize: 30),
                                              value: atributos.vigor,
                                              items: List.generate(6, (index) => index) // Lista de 0 a 5
                                              .map((number) => DropdownMenuItem<int>(
                                                value: number,
                                                child: Text("$number"),)).toList(),
                                                onChanged: (value) {
                                                setState(() {
                                                  atributos.vigor = value!;
                                                });}
                                            )
                                            ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )

                ],
              ),
              _avancarSeValido(atributos)?
              ElevatedButton(child: Text("Confirmar e ir para Perícias"),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CriarPericia(atributos: atributos)),
                  );
                },
              )
              : Text("Altere pelo menos um atributo")
            ]
        ),
      ),
    );
  }
}


