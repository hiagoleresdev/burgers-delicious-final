// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import '../controller/pedidos_controller.dart';
import 'pedidos_exibir_widget.dart';

class PedidosAndamentoPage extends StatefulWidget {
  const PedidosAndamentoPage({Key? key}) : super(key: key);

  @override
  State<PedidosAndamentoPage> createState() => _PedidosAndamentoPageState();
}

class _PedidosAndamentoPageState extends State<PedidosAndamentoPage> {
  var pedidos;

  @override
  void initState() {
    super.initState();
    pedidos = PedidosController().listar('1');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.shade50,
      child: Column(
        children: [
          PedidosExibirWidget(
            pedidos,
            Color.fromARGB(232, 255, 243, 81),
            Icons.check_circle_outline,
            '2',
          ),
        ],
      ),
    );
  }
}
