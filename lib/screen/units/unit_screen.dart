import 'package:flutter/material.dart';
import 'package:sistemagerenciamento/screen/models/units/unit.dart';
import 'package:sistemagerenciamento/screen/models/units/unit_services.dart';

// ESTA TELA É DE REGISTRO DE USUÁRIOS

class UnitScreen extends StatelessWidget {
  UnitScreen ({ Key? key }) : super(key: key);

TextEditingController unitController = TextEditingController();
TextEditingController nascimentoController = TextEditingController();
TextEditingController cpfController = TextEditingController();
TextEditingController celularController = TextEditingController();
final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registro de Usuários")
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Nome Completo:'), 
                  const SizedBox(height: 10,), 
                  TextFormField(
                    controller: unitController,
                    decoration: InputDecoration(border: OutlineInputBorder(borderSide: const BorderSide(width: 1, color: Colors.black12), borderRadius: BorderRadius.circular(8))
                    ),
                    validator: (value){
                      if (value == null || value.isEmpty){
                        return 'Por favor, preencha o campo nome';
                      }
                      return null;
                    },
                  ),
                    const SizedBox(height: 10,), 
                  Text("Data de Nascimento:"), 
                  TextFormField(
                    controller: nascimentoController,
                    decoration: InputDecoration(border: OutlineInputBorder(borderSide: const BorderSide(width: 1, color: Colors.black12), borderRadius: BorderRadius.circular(8))
                    ),
                    validator: (value){
                      if (value == null || value.isEmpty){
                        return 'Por favor, preencha o campo nascimento';
                      }
                      return null;
                    },
                  ),
                    const SizedBox(height: 10,), 
                  Text("CPF:"), 
                  TextFormField(
                    controller: cpfController,
                    decoration: InputDecoration(border: OutlineInputBorder(borderSide: const BorderSide(width: 1, color: Colors.black12), borderRadius: BorderRadius.circular(8))
                    ),
                    validator: (value){
                      if (value == null || value.isEmpty){
                        return 'Por favor, preencha o campo CPF';
                      }
                      return null;
                    },
                  ),
                    const SizedBox(height: 10,), 
                  Text("Nº de celular:"), 
                  TextFormField(
                    controller: celularController,
                    decoration: InputDecoration(border: OutlineInputBorder(borderSide: const BorderSide(width: 1, color: Colors.black12), borderRadius: BorderRadius.circular(8))
                    ),
                    validator: (value){
                      if (value == null || value.isEmpty){
                        return 'Por favor, preencha o campo celular';
                      }
                      return null;
                    },
                  ),
                    const SizedBox(height: 30,), 
                ],
                ),
            ),
              ElevatedButton(
              onPressed: (){
                if (_formKey.currentState!.validate()){
                  UnitServices unitServices = UnitServices();
                  Unit unit = Unit(unitController.text, nascimentoController.text, cpfController.text, celularController.text);
                }
              }, 
              child: const Text("Salvar"),
          )
          ],
        ),
      ),
    );
  }
}