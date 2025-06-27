import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:nakombi/categorias/models/categoria.dart';

class CategoriaServices {
  //instancias do firestore (armazenamento de dados)
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  //instancia do storage (armazenamneto de midias)
  FirebaseStorage _storage = FirebaseStorage.instance;

  adicionarCategoria(Categoria categoria){
    _firestore.collection('categorias').add(categoria.toMap());
    debugPrint('Nome:  ${categoria.nome}');
    debugPrint('Descrição:  ${categoria.descricao}');
  }

  atualizarCategoria(Categoria categoria){
        debugPrint('id:  ${categoria.id}');
    _firestore.collection('categorias').doc(categoria.id).update(categoria.toMap());
  }

  excluirCategoria(Categoria categoria){
    debugPrint('id:  ${categoria.id}');
    _firestore.collection('categorias').doc(categoria.id).delete();
  }

  Stream<QuerySnapshot> getCategorias(){
    return _firestore.collection('categorias').orderBy('nome').snapshots();
  }
}