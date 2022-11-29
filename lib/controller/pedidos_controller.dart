import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PedidosController {
  listar(status) {
    return FirebaseFirestore.instance
        .collection('pedidos')
        .where('uid', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
        .where('status', isEqualTo: status);
  }

  void adicionar(mesa, descricao) {
    FirebaseFirestore.instance.collection('pedidos').add(
      {
        'mesa': mesa,
        'descricao': descricao,
        'status': '0',
        'uid': FirebaseAuth.instance.currentUser!.uid,
      },
    );
  }

  void remover(id) {
    FirebaseFirestore.instance.collection('pedidos').doc(id).delete();
  }

  void atualizar(id, status) {
    FirebaseFirestore.instance.collection('pedidos').doc(id).update(
      {
        "status": status,
      },
    );
  }

  void feedback(comentario) {
    FirebaseFirestore.instance.collection('feedback').add(
      {
        'comentario': comentario,
        'uid': FirebaseAuth.instance.currentUser!.uid,
      },
    );
  }
}