// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sobre"),
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
        padding: EdgeInsets.only(top: 35, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[                  
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "O Burgers Delicious é um aplicativo de fast food, pensado para dar a melhor experiência para o cliente de nossa lanchonete. Com o aplicativo é possível consultar o cardápio, realizar pedidos e verificar o endereço de nossas lojas, entre outras funcionalidades.",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "DESENVOLVEDORES",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 33,
                      ),
                      Text(
                        "Beatriz Castro",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        height: 300,
                        child: Image.asset("lib/images/beatriz.jpg"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Hiago Leres",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        height: 335,
                        child: Image.asset("lib/images/hiago.jpeg"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Ítalo Santos",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        height: 300,
                        child: Image.asset("lib/images/italo.jpeg"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
