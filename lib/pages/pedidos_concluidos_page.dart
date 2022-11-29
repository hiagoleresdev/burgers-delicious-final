// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import '../controller/pedidos_controller.dart';
import 'pedidos_exibir_widget.dart';

class PedidosConcluidosPage extends StatefulWidget {
  const PedidosConcluidosPage({Key? key}) : super(key: key);

  @override
  State<PedidosConcluidosPage> createState() => _PedidosConcluidosPageState();
}

class _PedidosConcluidosPageState extends State<PedidosConcluidosPage> {
  var pedidos;

  @override
  void initState() {
    super.initState();
    pedidos = PedidosController().listar('2');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.shade50,
      child: Column(
        children: [
          PedidosExibirWidget(
            pedidos,
            Color.fromARGB(255, 189, 255, 109),
            null,
            '2',
          ),
        ],
      ),
    );
  }
}
