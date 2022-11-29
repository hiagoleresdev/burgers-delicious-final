// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';

class Meus_Pedidos extends StatelessWidget {
  const Meus_Pedidos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meus Pedidos"),
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
          productListViewItem(0, "2 X-Burguer", "17/10/2022"),
          productListViewItem(1, "1 X-Salada", "01/10/2022"),
          productListViewItem(2, "3 X-Bacon", "30/09/2022"),
          productListViewItem(3, "1 X-Egg", "25/09/2022"),
          productListViewItem(4, "3 X-Pesadelo", "11/08/2022"),
          productListViewItem(5, "1 X-Salada", "11/07/2022"),
          productListViewItem(6, "4 X-Tudo", "26/06/2022"),
          productListViewItem(7, "1 X-Burger", "25/05/2022"),
          productListViewItem(8, "5 X-Bacon", "12/04/2022"),
          productListViewItem(9, "1 X-Tudo", "24/03/2022"),
          productListViewItem(10, "1 X-Tudo", "05/03/2022"),
          productListViewItem(11, "1 X-Bacon", "04/03/2022"),
          productListViewItem(12, "2 X-Pesadelo", "13/02/2022"),
          productListViewItem(13, "2 X-Pesadelo", "13/01/2022"),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            color: Colors.white,
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
            'Histórico',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 13, color: Colors.grey),
          )),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 50),
                child: Text(
                  'Data',
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

  Widget productListViewItem(int index, String nome, String data) {
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
              Container(
                margin: EdgeInsets.only(left: 5),
                child: Text(data,
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
}
