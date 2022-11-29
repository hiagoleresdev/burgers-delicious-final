// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, duplicate_ignore, avoid_unnecessary_containers, must_be_immutable
import 'package:flutter/material.dart';
import 'package:lanchonete_teste/pages/cardapio.dart';
import 'package:lanchonete_teste/pages/lanchonetes.dart';
import 'package:lanchonete_teste/pages/ligar.dart';
import 'package:lanchonete_teste/pages/listar.dart';
import 'package:lanchonete_teste/pages/login.dart';
import 'package:lanchonete_teste/pages/meus_pedidos.dart';
import 'package:lanchonete_teste/pages/perfil.dart';
import 'package:lanchonete_teste/pages/sobre.dart';
import 'package:lanchonete_teste/pages/ver_carrinho.dart';
import '../controller/login_controller.dart';
import 'feedback.dart';

class Principal extends StatelessWidget {
  List<String> values = [
    'lib/images/promo1.jpeg',
    'lib/images/promo2.jpeg',
    'lib/images/promo3.jpeg',
    'lib/images/promo4.jpeg',
    'lib/images/promo5.jpeg',
    'lib/images/promo6.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text("Promoções"),
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
      ),
      body: Container(
        child: GridView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return Card(
              elevation: 15,
              child: Center(
                child: Image.asset(values[index]),
              ),
            );
          },
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        ),
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
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
            )),
            accountName: Text("Rodrigo Plotze"),
            accountEmail: Text("rodrigo.plotze@fatec.sp.gov.br"),
            currentAccountPicture: CircleAvatar(
                child: SizedBox(
              child: Image.asset("lib/images/plotze_redondo.png"),
              height: 80,
              width: 80,
            )),
          ),
          ListTile(
              leading: Icon(Icons.perm_device_info_sharp),
              title: Text("Sobre"),
              onTap: () {
                debugPrint('toquei no drawer');
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Sobre()));
              }),
          ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Perfil"),
              onTap: () {
                debugPrint('toquei no drawer');
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Perfil()));
              }),
          ListTile(
              leading: Icon(Icons.fastfood),
              title: Text("Cardápio"),
              onTap: () {
                debugPrint('toquei no drawer');
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Cardapio()));
              }),
          ListTile(
              leading: Icon(Icons.shopping_basket_sharp),
              title: Text("Meus pedidos"),
              onTap: () {
                debugPrint('toquei no drawer');
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Meus_Pedidos()));
              }),
          ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Ver carrinho"),
              onTap: () {
                debugPrint('toquei no drawer');
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Ver_Carrinho()));
              }),
          ListTile(
              leading: Icon(Icons.pin_drop),
              title: Text("Lanchonetes"),
              onTap: () {
                debugPrint('toquei no drawer');
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Lanchonetes()));
              }),
          ListTile(
              leading: Icon(Icons.phone),
              title: Text("Ligar"),
              onTap: () {
                debugPrint('toquei no drawer');
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Ligar()));
              }),
          ListTile(
              leading: Icon(Icons.feed_outlined),
              title: Text("Listar"),
              onTap: () {
                debugPrint('toquei no drawer');
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Listar()));
              }),
          ListTile(
              leading: Icon(Icons.check_box_outlined),
              title: Text("Avaliar"),
              onTap: () {
                debugPrint('toquei no drawer');
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Avaliacao()));
              }),
          ListTile(
              leading: Icon(Icons.logout),
              title: Text("LogOff"),
              onTap: () {
                debugPrint('toquei no drawer');
                LoginController().logout();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => LoginPage()));
              }),
        ],
      )),
    );
  }
}
