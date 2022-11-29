// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_print, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:lanchonete_teste/pages/lanches.dart';

class Cardapio extends StatelessWidget {
  const Cardapio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> values = [
      'lib/images/lanches.jpg',
      'lib/images/bebidas.jpg',
      'lib/images/porcoes.jpg',
      'lib/images/sobremesas.jpg'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Cardápio"),
        foregroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color.fromARGB(255, 255, 128, 17),
                  Color.fromARGB(255, 221, 75, 8),
                ]),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color.fromARGB(255, 255, 255, 255),
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        child: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Lanches()));
              },
              child: Card(
                child: Center(
                  child: Image.asset('lib/images/lanches.jpg'),
                ),
              ),
            ),
            InkWell(
              child: Card(
                child: Center(
                  child: Image.asset('lib/images/bebidas.jpg'),
                ),
              ),
            ),
            InkWell(
              child: Card(
                child: Center(
                  child: Image.asset('lib/images/porcoes.jpg'),
                ),
              ),
            ),
            InkWell(
              child: Card(
                child: Center(
                  child: Image.asset('lib/images/sobremesas.jpg'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}