// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Categoria {
  String? id;
  String? nome;
  String? descricao;
  String? imagem;
  Categoria({
    this.id,
    this.nome,
    this.descricao,
    this.imagem
  });

  Categoria copyWith({
    String? id,
    String? nome,
    String? descricao,
    String? imagem
  }) {
    return Categoria(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      descricao: descricao ?? this.descricao,
      imagem: imagem ?? this.imagem,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'descricao': descricao,
      'imagem': imagem
    };
  }

  factory Categoria.fromMap(Map<String, dynamic> map) {
    return Categoria(
      id: map['id'] as String,
      nome: map['nome'] as String,
      descricao: map['descricao'] as String,
      imagem: map['imagem'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Categoria.fromJson(String source) => Categoria.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Categoria(id: $id, nome: $nome, descricao: $descricao, imagem: $imagem)';

  @override
  bool operator ==(covariant Categoria other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.nome == nome &&
      other.descricao == descricao &&
      other.imagem == imagem;
  }

  @override
  int get hashCode => id.hashCode ^ nome.hashCode ^ descricao.hashCode ^ imagem.hashCode;
}
