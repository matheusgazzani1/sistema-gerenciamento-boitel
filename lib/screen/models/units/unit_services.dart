import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sistemagerenciamento/screen/models/units/unit.dart';

class UnitServices {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Método é utilizado para gravar dados no Firebase
  addUnit(Unit unit){
    _firestore.collection('units').add(unit.toMap());
  }

}