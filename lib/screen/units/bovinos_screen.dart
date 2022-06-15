import 'package:flutter/material.dart';

// ESTA TELA É DE REGISTRO DE BOVINOS

class BovinosScreen extends StatelessWidget {
  BovinosScreen ({ Key? key }) : super(key: key);
TextEditingController unitController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registro de Bovinos")
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container( 
        child: Column(
          children: [Text('Identificação do Bovino')],
          ), 
        ),
      ),
    );
  }
}