// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:nakombi/produtos/models/produto.dart';

class ItemVenda {
  String? id;
  int? quantidade;
  double? preco;
  double? subtotal;
  Produto? produto;
  
  ItemVenda({
    this.id,
    this.quantidade,
    this.preco,
    this.subtotal,
    this.produto,
  }) {
    subtotal = preco! * quantidade!;
  }

  ItemVenda copyWith({
    String? id,
    int? quantidade,
    double? preco,
    double? subtotal,
    Produto? produto,
  }) {
    return ItemVenda(
      id: id ?? this.id,
      quantidade: quantidade ?? this.quantidade,
      preco: preco ?? this.preco,
      subtotal: subtotal ?? this.subtotal,
      produto: produto ?? this.produto,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'quantidade': quantidade,
      'preco': preco,
      'subtotal': subtotal,
      'produto': produto?.toMap(),
    };
  }

  factory ItemVenda.fromMap(Map<String, dynamic> map) {
    return ItemVenda(
      id: map['id'] != null ? map['id'] as String : null,
      quantidade: map['quantidade'] != null ? map['quantidade'] as int : null,
      preco: map['preco'] != null ? map['preco'] as double : null,
      subtotal: map['subtotal'] != null ? map['subtotal'] as double : null,
      produto: map['produto'] != null ? Produto.fromMap(map['produto'] as Map<String,dynamic>) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemVenda.fromJson(String source) => ItemVenda.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ItemVenda(id: $id, quantidade: $quantidade, preco: $preco, subtotal: $subtotal, produto: $produto)';
  }

  @override
  bool operator ==(covariant ItemVenda other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.quantidade == quantidade &&
      other.preco == preco &&
      other.subtotal == subtotal &&
      other.produto == produto;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      quantidade.hashCode ^
      preco.hashCode ^
      subtotal.hashCode ^
      produto.hashCode;
  }
}
