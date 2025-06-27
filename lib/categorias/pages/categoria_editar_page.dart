import 'package:flutter/material.dart';
import 'package:nakombi/categorias/models/categoria.dart';
import 'package:nakombi/categorias/services/categoria_services.dart';
import 'package:nakombi/commons/my_textformfield.dart';

class EditarCategoria extends StatelessWidget {
  EditarCategoria({super.key, this.categoria});

  Categoria? categoria;
  TextEditingController nomeController = TextEditingController();
  TextEditingController descricaoController = TextEditingController();
  // Categoria categoria = ; //classe de dados DTO
  @override
  Widget build(BuildContext context) {
    nomeController.text = categoria!.nome!;
    descricaoController.text = categoria!.descricao!;
    return Scaffold(
      appBar: AppBar(title: Text("Categoria"),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          children: [
            MyTextFormField('nome', controller: nomeController),
            MyTextFormField('descrição', controller: descricaoController),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                    debugPrint('id:  ${this.categoria!.id}');
                Categoria categoria = Categoria(
                  id: this.categoria!.id,
                  nome: nomeController.text,
                  descricao: descricaoController.text,
                );
                CategoriaServices categoriaServices = CategoriaServices();
                categoriaServices.atualizarCategoria(categoria);
              }, 
              child: Text("Salvar"))
          ],
        ),
      ),
    );
  }
}