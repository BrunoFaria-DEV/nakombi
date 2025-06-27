// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:nakombi/clientes/models/cliente.dart';
import 'package:nakombi/vendas/models/item_venda.dart';

class Venda {
  String? id;
  DateTime? data;
  String? observacao;
  Cliente? cliente;
  List<ItemVenda>? itens;
  Venda({
    this.id,
    this.data,
    this.observacao,
    this.cliente,
    this.itens,
  });

  Venda copyWith({
    String? id,
    DateTime? data,
    String? observacao,
    Cliente? cliente,
    List<ItemVenda>? itens,
  }) {
    return Venda(
      id: id ?? this.id,
      data: data ?? this.data,
      observacao: observacao ?? this.observacao,
      cliente: cliente ?? this.cliente,
      itens: itens ?? this.itens,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'data': data?.millisecondsSinceEpoch,
      'observacao': observacao,
      'cliente': cliente?.toMap(),
      'itens': itens!.map((x) => x?.toMap()).toList(),
    };
  }

  factory Venda.fromMap(Map<String, dynamic> map) {
    return Venda(
      id: map['id'] != null ? map['id'] as String : null,
      data: map['data'] != null ? DateTime.fromMillisecondsSinceEpoch(map['data'] as int) : null,
      observacao: map['observacao'] != null ? map['observacao'] as String : null,
      cliente: map['cliente'] != null ? Cliente.fromMap(map['cliente'] as Map<String,dynamic>) : null,
      itens: map['itens'] != null ? List<ItemVenda>.from((map['itens'] as List<int>).map<ItemVenda?>((x) => ItemVenda.fromMap(x as Map<String,dynamic>),),) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Venda.fromJson(String source) => Venda.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Venda(id: $id, data: $data, observacao: $observacao, cliente: $cliente, itens: $itens)';
  }

  @override
  bool operator ==(covariant Venda other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.data == data &&
      other.observacao == observacao &&
      other.cliente == cliente &&
      listEquals(other.itens, itens);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      data.hashCode ^
      observacao.hashCode ^
      cliente.hashCode ^
      itens.hashCode;
  }
}
