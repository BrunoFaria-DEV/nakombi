import 'package:flutter/material.dart';
import 'package:nakombi/commons/my_textformfield.dart';

class AddClientPage extends StatelessWidget {
  AddClientPage({super.key});

  TextEditingController nomeController = TextEditingController();
  TextEditingController enderecoController = TextEditingController();
  TextEditingController telefoneController = TextEditingController();
  TextEditingController cepController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registrar Cliente')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30),
        child: Column(
          children: [
            MyTextFormField('Nome', controller: nomeController,),
            MyTextFormField('Endereço', controller: enderecoController,),
            MyTextFormField('Telefone', controller: telefoneController,),
            MyTextFormField('Cep', controller: cepController,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    debugPrint('Registrar cliente');
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AddClientPage())); 
                  },
                  child: Text('Registrar')
                ),
                ElevatedButton(
                  onPressed: () {
                    debugPrint('cliquei'); 
                  },
                  child: Text('Alterar')
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}