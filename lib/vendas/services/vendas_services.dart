import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:nakombi/clientes/models/cliente.dart';
import 'package:nakombi/produtos/models/produto.dart';
import 'package:nakombi/vendas/models/item_venda.dart';

class ClienteServices {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Cliente? cliente;
  List<ItemVenda> _items = [];

  adicionarItemVenda(Produto produto, int quantidade){
    _items.add(ItemVenda(produto: produto, quantidade: quantidade));
  }

  atualizarQuantidade(Produto produto, int quantidade){
    for (var item in _items) {

    }
  }
}