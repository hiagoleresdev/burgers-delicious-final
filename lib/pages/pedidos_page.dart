// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/pedidos_controller.dart';
import 'pedidos_exibir_widget.dart';
import 'util.dart';

class PedidosPage extends StatefulWidget {
  const PedidosPage({Key? key}) : super(key: key);

  @override
  State<PedidosPage> createState() => _PedidosPageState();
}

class _PedidosPageState extends State<PedidosPage> {
  var txtMesa = TextEditingController();
  var txtDescricao = TextEditingController();

  var pedidos;

  @override
  void initState() {
    super.initState();
    pedidos = PedidosController().listar('0');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.shade50,
      child: Column(
        children: [
          Container(
            color: Colors.blueGrey.shade100,
            child: ListTile(
              leading: Icon(Icons.add_task_outlined),
              contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              title: Text(
                'Adicionar pedido',
                style: GoogleFonts.roboto(fontSize: 22),
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(
                      'Adicionar',
                      style: GoogleFonts.roboto(
                        fontSize: 36,
                        color: Colors.blueGrey.shade700,
                      ),
                    ),
                    backgroundColor: Colors.blueGrey.shade50,
                    content: Container(
                      width: 350,
                      height: 260,
                      child: Column(
                        children: [
                          campoTexto('Mesa', Icons.title, txtMesa),
                          TextField(
                            style: GoogleFonts.roboto(fontSize: 24),
                            controller: txtDescricao,
                            maxLines: 5,
                            textAlignVertical: TextAlignVertical.top,
                            decoration: InputDecoration(
                              labelText: 'Descrição',
                              labelStyle: GoogleFonts.roboto(fontSize: 14),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    actionsPadding: EdgeInsets.fromLTRB(0, 0, 20, 20),
                    actions: [
                      TextButton(
                        style: TextButton.styleFrom(
                          minimumSize: Size(120, 50),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'cancelar',
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            color: Colors.blueAccent.shade700,
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blueAccent.shade700,
                          minimumSize: Size(120, 50),
                        ),
                        onPressed: () {
                          if (txtMesa.text.isNotEmpty) {
                            PedidosController().adicionar(
                              txtMesa.text,
                              txtDescricao.text,
                            );
                            txtMesa.clear();
                            txtDescricao.clear();
                            sucesso(context, 'Pedido adicionado com sucesso.');
                          } else {
                            erro(context, 'Informe o preço do pedido');
                          }

                          Navigator.pop(context);
                        },
                        child: Text(
                          'salvar',
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          //
          // EXIBIR pedidos
          //
          PedidosExibirWidget(
            pedidos,
            Color.fromARGB(255, 255, 110, 110),
            Icons.electric_bolt,
            '1',
          ),
        ],
      ),
    );
  }
}
