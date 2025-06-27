import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard(this.title, this.label, this.onPrimary, this.onSecundary, {super.key,});
  final String title;
  final String label;
  final Color onPrimary;
  final Color onSecundary;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [onPrimary, onSecundary],
            begin: AlignmentDirectional.topCenter,
            end: AlignmentDirectional.bottomCenter,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.00),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Vendas',
                style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
              ),
               Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: onSecundary,
                ),
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Text(
                    'Vendas',
                    style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                  ),
               ),
               Row(
                 children: [
                    Text(
                      '08/05/2025',
                      style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                      child: VerticalDivider(color: Colors.white),
                    ),
                    Text(
                      'Vendas',
                      style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                 ],
               ),
               Row(
                children: [
                  ElevatedButton.icon(
                    label: Text('Visualizar', style: TextStyle(color: onPrimary)),
                    onPressed: () {
                      debugPrint('Registrar cliente');
                    },
                    style: ButtonStyle(),
                    icon: Icon(Icons.verified, color: onPrimary),
                  ),
                ],
              )
            ],
          ), 
        ),
      ),
    );
  }
}