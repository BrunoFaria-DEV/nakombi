import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nakombi/categorias/models/categoria.dart';
import 'package:nakombi/categorias/pages/adicionar_categoria.dart';
import 'package:nakombi/categorias/pages/categoria_editar_page.dart';
import 'package:nakombi/categorias/services/categoria_services.dart';
import 'package:nakombi/commons/alerta_helper.dart';

class ListaCategoriaPage extends StatelessWidget {
  const ListaCategoriaPage({super.key});

  @override
  Widget build(BuildContext context) {
    CategoriaServices _categoriaServices = CategoriaServices();
    Categoria _categoria = Categoria();
    
    return Scaffold(
      body: StreamBuilder(
        stream: _categoriaServices.getCategorias(), 
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  DocumentSnapshot ds = snapshot.data!.docs[index];
                  return Row(
                    children: [
                      SizedBox(
                        width: 250,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Nome: ${ds['nome']}', style: TextStyle(fontWeight: FontWeight.bold),),
                                Text('Descrição: ${ds['descricao']}', overflow: TextOverflow.ellipsis, maxLines: 2, softWrap: true,),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // IconButton(onPressed: () {
                      //   _categoria.id = ds.id;
                      //   _categoria.nome = ds["nome"];
                      //   _categoria.descricao = ds["descricao"];
                      //   Navigator.of(context, ).push(MaterialPageRoute(builder: (context) => EditarCategoria(categoria: _categoria,)));
                      // }, icon: Icon(Icons.edit)),
                      // IconButton(onPressed: () { 
                      //   _categoria.id = ds.id;
                      //   CategoriaServices categoriaServices = CategoriaServices();
                      //   categoriaServices.excluirCategoria(_categoria);
                      //   }, icon: Icon(Icons.delete, color: Colors.red,)),
                                            IconButton(onPressed: () {
                        _categoria.id = ds.id;
                        _categoria.nome = ds["nome"];
                        _categoria.descricao = ds["descricao"];
                        Navigator.of(context, ).push(MaterialPageRoute(builder: (context) => EditarCategoria(categoria: _categoria,)));
                      }, icon: Icon(Icons.edit)),
                      IconButton(
                        onPressed: () async {
                          bool confirmar = await AlertaHelper.confirmarAcao(
                            context: context,
                            titulo: 'Excluir Categoria',
                            mensagem: 'Deseja realmente excluir esta categoria?',
                          );

                          if (confirmar) {
                            _categoria.id = ds.id;
                            CategoriaServices categoriaServices = CategoriaServices();
                            categoriaServices.excluirCategoria(_categoria);
                          }
                        },
                        icon: Icon(Icons.delete, color: Colors.red),
                      )
                    ],
                  );
                },
              ),
            );
          }
          return Container(child: Text("nenhum registro encontrado"));
        }, 
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => AdicionarCategoria())
          );
        },
      ),
    );
  }
}