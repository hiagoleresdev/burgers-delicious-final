// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:lanchonete_teste/pages/principal.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu Perfil"),
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
        padding: EdgeInsets.only(top: 10, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              alignment: Alignment(0.0, 1.15),
              // ignore: unnecessary_new
              decoration: new BoxDecoration(
                // ignore: unnecessary_new
                image: new DecorationImage(
                  image: AssetImage("lib/images/plotze_redondo.png"),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Nome: Rodrigo",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black38,
                fontSize: 20,
              ), // autofocus: true,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Sobrenome: Plotze",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black38,
                fontSize: 20,
              ), // autofocus: true,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Telefone: (11) 78696-2152",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black38,
                fontSize: 20,
              ), // autofocus: true,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Endereço: Avenida XPTO - nº 704 - Ribeirão Preto/SP",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black38,
                fontSize: 20,
              ), // autofocus: true,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "E-mail: rodrigo.plotze@fatec.sp.gov.br",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black38,
                fontSize: 20,
              ), // autofocus: true,
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  // ignore: prefer_const_literals_to_create_immutables
                  colors: [
                    Color.fromARGB(255, 255, 128, 17),
                    Color.fromARGB(255, 221, 75, 8),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Editar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: TextButton(
                child: Text(
                  "Cancelar",
                  textAlign: TextAlign.center,
                ),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Principal(),
                    ),
                  ),
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
