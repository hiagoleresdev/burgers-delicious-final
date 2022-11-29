// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'pedidos_andamento_page.dart';
import 'pedidos_concluidos_page.dart';
import 'pedidos_page.dart';

class Listar extends StatefulWidget {
  const Listar({Key? key}) : super(key: key);

  @override
  State<Listar> createState() => _ListarState();
}

class _ListarState extends State<Listar> {
  var pedidos;

  // Telas de Navegecao
  final List<Widget> telas = [
    PedidosPage(),
    PedidosAndamentoPage(),
    PedidosConcluidosPage(),
  ];
  int index = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pedidos"),
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
      body: telas[index],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        currentIndex: index,
        onTap: (idx) {
          setState(() {
            index = idx;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.task_outlined,
            ),
            label: 'Pedidos',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.electric_bolt_outlined,
            ),
            label: 'Em andamento',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.check_circle_outline,
            ),
            label: 'Concluído',
          ),
        ],
      ),
    );
  }
}
