// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lanchonete_teste/pages/principal.dart';
import 'package:lanchonete_teste/pages/util.dart';

import '../controller/pedidos_controller.dart';

class Avaliacao extends StatefulWidget {
  const Avaliacao({super.key});

  @override
  State<Avaliacao> createState() => _AvaliacaoState();
}

class _AvaliacaoState extends State<Avaliacao> {
  var txtComentario = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avaliar"),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 400,
                height: 400,
                child: Image.asset("lib/images/avaliar.png")),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                controller: txtComentario,
                minLines: 5,
                maxLines: 10,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    hintText: 'Escreva aqui sua avaliação',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    )),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              color: Colors.white,
              child: Column(children: [checkoutButtom()]),
            )
          ],
        ),
      ),
    );
  }

  Widget checkoutButtom() {
    return Container(
      height: 45,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3, 1],
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
          child: Text(
            "Enviar Avaliação",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          onPressed: () => {
            if (txtComentario.text.isNotEmpty)
              {
                PedidosController().feedback(
                  txtComentario.text,
                ),
                txtComentario.clear(),
                sucesso(context, 'Avaliação enviada com sucesso.'),
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Principal())),
              }
            else
              {
                erro(context, 'O campo precisa ser preenchido!'),
              }
          },
        ),
      ),
    );
  }
}
