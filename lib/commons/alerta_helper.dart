import 'package:flutter/material.dart';

class AlertaHelper {
  static Future<bool> confirmarAcao({
    required BuildContext context,
    String titulo = 'Confirmar Ação',
    String mensagem = 'Tem certeza que deseja continuar?',
    String textoCancelar = 'Cancelar',
    String textoConfirmar = 'Sim',
  }) async {
    final resultado = await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(titulo),
          content: Text(mensagem),
          actions: <Widget>[
            TextButton(
              child: Text(textoCancelar),
              onPressed: () => Navigator.of(context).pop(false),
            ),
            TextButton(
              child: Text(textoConfirmar),
              onPressed: () => Navigator.of(context).pop(true),
            ),
          ],
        );
      },
    );

    return resultado ?? false; // retorna false se for cancelado ou fechado
  }
}
