// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_typing_uninitialized_variables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/pedidos_controller.dart';
import 'util.dart';

class PedidosExibirWidget extends StatefulWidget {
  final pedidos;
  final cor;
  final icone;
  final status;

  const PedidosExibirWidget(this.pedidos, this.cor, this.icone, this.status,
      {Key? key})
      : super(key: key);

  @override
  State<PedidosExibirWidget> createState() => _PedidosExibirWidgetState();
}

class _PedidosExibirWidgetState extends State<PedidosExibirWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Theme.of(context).colorScheme.background,
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: StreamBuilder<QuerySnapshot>(
          stream: widget.pedidos.snapshots(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return const Center(
                  child: Text('Não foi possível conectar.'),
                );
              case ConnectionState.waiting:
                return const Center(child: CircularProgressIndicator());
              default:
                final dados = snapshot.requireData;
                if (dados.size > 0) {
                  return ListView.builder(
                    itemCount: dados.size,
                    itemBuilder: (context, index) {
                      dynamic item = dados.docs[index].data();
                      String mesa = item['mesa'];
                      String descricao = item['descricao'];

                      return Card(
                        color: widget.cor,
                        child: ListTile(
                          title: Text(
                            mesa,
                            style: GoogleFonts.roboto(fontSize: 22),
                          ),
                          subtitle: Text(
                            descricao,
                            style: GoogleFonts.roboto(fontSize: 18),
                          ),
                          trailing: Visibility(
                            visible: widget.status != '3' ? true : false,
                            child: IconButton(
                              icon: Icon(widget.icone),
                              onPressed: () {
                                PedidosController().atualizar(
                                  dados.docs[index].id,
                                  widget.status,
                                );

                                sucesso(
                                  context,
                                  'Status atualizado com sucesso.',
                                );
                              },
                            ),
                          ),
                          onLongPress: () {
                            PedidosController().remover(dados.docs[index].id);
                            sucesso(context, 'Item removido com sucesso.');
                          },
                        ),
                      );
                    },
                  );
                } else {
                  return Center(
                    child: Text('Ops! Nenhum pedido foi encontrado! Por favor, volte em breve! '),
                  );
                }
            }
          },
        ),
      ),
    );
  }
}