import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nakombi/clientes/pages/add_client_page.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Perfil de Usuário'),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              ClipOval(child: Image.asset('assets/images/default-user.jpg', height: 120, width: 120, fit: BoxFit.fill)),
              Text(
                'prof.albertosales@gmail.com',
                style: TextStyle(color: Colors.blueGrey.shade800, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 25),
              Container(
                width: 400,
                height: 130,
                decoration: BoxDecoration(boxShadow: [BoxShadow(offset: Offset(1, 1), color: Colors.black12)]),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ALBERTO SALES E SILVA'),
                        Text('Rua: Dr. Santo Santos'),
                        Text('(65) - 9973-7171'),
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
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}