import 'package:flutter/material.dart';

// ESTA TELA É DE REGISTRO DAS FAZENDAS

class FazendasScreen extends StatelessWidget {
  FazendasScreen ({ Key? key }) : super(key: key);
TextEditingController unitController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registro de Fazendas")
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container( 
        child: Column(
          children: [Text('Nome da Fazenda')],
          ), 
        ),
      ),
    );
  }
}