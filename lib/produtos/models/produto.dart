// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Produto {
  String? id;
  String? nome;
  String? descricao;
  String? marca;
  double? preco;
  int? estoque;
  String? idCategoria;
  
  Produto({
    this.id,
    this.nome,
    this.descricao,
    this.marca,
    this.preco,
    this.estoque,
    this.idCategoria,
  });

  Produto copyWith({
    String? id,
    String? nome,
    String? descricao,
    String? marca,
    double? preco,
    int? estoque,
    String? idCategoria,
  }) {
    return Produto(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      descricao: descricao ?? this.descricao,
      marca: marca ?? this.marca,
      preco: preco ?? this.preco,
      estoque: estoque ?? this.estoque,
      idCategoria: idCategoria ?? this.idCategoria,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'descricao': descricao,
      'marca': marca,
      'preco': preco,
      'estoque': estoque,
      'idCategoria': idCategoria,
    };
  }

  factory Produto.fromMap(Map<String, dynamic> map) {
    return Produto(
      id: map['id'] != null ? map['id'] as String : null,
      nome: map['nome'] != null ? map['nome'] as String : null,
      descricao: map['descricao'] != null ? map['descricao'] as String : null,
      marca: map['marca'] != null ? map['marca'] as String : null,
      preco: map['preco'] != null ? map['preco'] as double : null,
      estoque: map['estoque'] != null ? map['estoque'] as int : null,
      idCategoria: map['idCategoria'] != null ? map['idCategoria'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Produto.fromJson(String source) => Produto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Produto(id: $id, nome: $nome, descricao: $descricao, marca: $marca, preco: $preco, estoque: $estoque, idCategoria: $idCategoria)';
  }

  @override
  bool operator ==(covariant Produto other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.nome == nome &&
      other.descricao == descricao &&
      other.marca == marca &&
      other.preco == preco &&
      other.estoque == estoque &&
      other.idCategoria == idCategoria;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      nome.hashCode ^
      descricao.hashCode ^
      marca.hashCode ^
      preco.hashCode ^
      estoque.hashCode ^
      idCategoria.hashCode;
  }
}
