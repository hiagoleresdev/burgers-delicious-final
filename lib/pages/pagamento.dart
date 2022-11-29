// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field

import 'package:flutter/material.dart';
import 'package:lanchonete_teste/pages/confirmacao.dart';

class Pagamento extends StatelessWidget {
  const Pagamento({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lanches"),
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
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

enum SingingCharacter { dinheiro, credito, pix }

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  SingingCharacter? _character = SingingCharacter.dinheiro;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        SizedBox(
            width: 200,
            height: 200,
            child: Image.asset("lib/images/pagamento.png")),
        SizedBox(
          height: 20,
        ),
        ListTile(
          title: const Text(
            'Dinheiro',
            // ignore: unnecessary_const
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 30.0,
            ),
          ),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.dinheiro,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text(
            'Cartão de Crédito',
            // ignore: unnecessary_const
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 30.0,
            ),
          ),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.credito,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text(
            'PIX',
            // ignore: unnecessary_const
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 30.0,
            ),
          ),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.pix,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          color: Colors.white,
          child: Column(children: [checkoutButtom()]),
        )
      ],
    );
  }

  Widget checkoutButtom() {
    SizedBox(
      height: 10,
    );
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
            "Avançar",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Confirmacao(),
              ),
            ),
          },
        ),
      ),
    );
  }
}
