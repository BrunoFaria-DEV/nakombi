import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:nakombi/clientes/models/cliente.dart';

class ClienteServices {
  //instancias do firestore (armazenamento de dados)
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  //instancia do storage (armazenamneto de midias)
  FirebaseStorage _storage = FirebaseStorage.instance;

  adicionarCliente(Cliente cliente){
    _firestore.collection('clientes').add(cliente.toMap());
    debugPrint('Nome:  ${cliente.nome}');
    debugPrint('Email:  ${cliente.email}');
    debugPrint('Cpf:  ${cliente.cpf}');
  }

  atualizarCliente(Cliente cliente){
    debugPrint('nome:  ${cliente.nome}');
    _firestore.collection('clientes').doc(cliente.id).update(cliente.toMap());
  }

  excluirCliente(Cliente cliente){
    debugPrint('id:  ${cliente.id}');
    _firestore.collection('clientes').doc(cliente.id).delete();
  }

  Stream<QuerySnapshot> getClientes(){
    return _firestore.collection('clientes').orderBy('nome').snapshots();
  }
}