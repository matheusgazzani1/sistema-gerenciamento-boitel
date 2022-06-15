import 'package:flutter/material.dart';
import 'package:sistemagerenciamento/screen/login/login_screen.dart';
import 'package:sistemagerenciamento/screen/units/fazendas_screen.dart';
import 'package:sistemagerenciamento/screen/units/unit_screen.dart';
import 'package:sistemagerenciamento/screen/utils/first_page.dart';
import 'package:sistemagerenciamento/screen/units/bovinos_screen.dart';
import 'package:sistemagerenciamento/screen/units/fazendas_screen.dart';
import 'package:firebase_core/firebase_core.dart';


import '../home/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sistema de terminação em confinamento',
      theme: ThemeData(
        
        primarySwatch: Colors.cyan
),
      initialRoute: '/login',
      routes: {
        '/home' : (context) => const HomeScreen(),
        '/unit' : (context) => UnitScreen(),
        '/fazendas' :(context) => FazendasScreen(),
        '/login' : (context) => LoginScreen(),
      },
    );
  }
}
