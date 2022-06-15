import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:sistemagerenciamento/screen/models/user/user_local.dart';

FirebaseAuth _auth = FirebaseAuth.instance;
FirebaseFirestore _firestore = FirebaseFirestore.instance;

class UserServices{
  
  UserLocal? userLocal;
  // MÉTODO PARA REALIZAR A AUTENTICAÇÃO NO FIREBASE
   Future<void> signIn(UserLocal userLocal) async {
    try {
      User? user = (await _auth.signInWithEmailAndPassword(
        email: userLocal.email!, password: userLocal.password!))
        .user;
        this.userLocal = userLocal;
        this.userLocal!.id = user!.uid;
        } on PlatformException catch (e) {
          debugPrint(e.toString());
        }
    }
    // MÉTODO PARA REGISTRAR USUÁRIO
    signUp(UserLocal userLocal) async{
      try{
       User? user = (await _auth.createUserWithEmailAndPassword(
          email: userLocal.email!, password: userLocal.password!))
          .user;
          this.userLocal = userLocal;
          this.userLocal!.id = user!.uid;
      } catch (e){
        debugPrint(e.toString());
      }
    }
}