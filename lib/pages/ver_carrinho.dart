// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'package:lanchonete_teste/pages/pagamento.dart';

class Ver_Carrinho extends StatefulWidget {
  const Ver_Carrinho({super.key});

  @override
  State<Ver_Carrinho> createState() => _Ver_CarrinhoState();
}

class _Ver_CarrinhoState extends State<Ver_Carrinho> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carrinho"),
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
      body: SingleChildScrollView(
        child: Column(children: [
          listviewHeading(),
          productListViewItem(0, "X-Burguer", "10", "2"),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                color: Color(0xfff1f1f1)),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Column(children: [subTotal()]),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            color: Colors.white,
            child: Column(children: [checkoutButtom()]),
          )
        ]),
      ),
    );
  }

  Widget listviewHeading() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 7),
      decoration: BoxDecoration(color: Color(0xffF1F1F1)),
      child: Row(
        children: [
          Expanded(
              child: Text(
            'Produto',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 13, color: Colors.grey),
          )),
          Row(
            children: [
              Text(
                'Quantidade',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: Colors.grey),
              ),
              Container(
                margin: EdgeInsets.only(left: 50),
                child: Text(
                  'Preço',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Colors.grey),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget productListViewItem(
      int index, String nome, String preco, String quantidade) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(top: 1),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
      child: Row(
        children: [
          Expanded(
            child: Text(
              nome,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff777b7a),
              ),
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.add_circle_outline,
                color: Color.fromARGB(255, 238, 115, 0),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: Text(quantidade,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff777b7a),
                    )),
              ),
              Icon(
                Icons.remove_circle_outline,
                color: Color.fromARGB(255, 238, 115, 0),
              ),
              Container(
                margin: EdgeInsets.only(left: 5),
                child: Text(
                    'R'
                    '\$'
                    '$preco',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff777b7a),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget subTotal() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Total',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xff777b7a),
              fontSize: 20),
        ),
        Text(
          'R'
          '\$20',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xff777b7a),
              fontSize: 20),
        )
      ],
    );
  }

  Widget checkoutButtom() {
    SizedBox(
      height: 20,
    );
    return Container(
      height: 60,
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Pagamento(),
              ),
            );
          },
        ),
      ),
    );
  }
}
