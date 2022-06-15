import 'package:flutter/material.dart';
import 'package:sistemagerenciamento/screen/home/home_screen.dart';
import 'package:sistemagerenciamento/screen/models/user/user_local.dart';
import 'package:sistemagerenciamento/screen/models/user/user_services.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  UserLocal userLocal = UserLocal();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          const Image(
            width: 280,
            height: 280,
            image: AssetImage('assets/images/bovinos.png'),
          ),
          const Text(
            'Boitel App',
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 130, right: 130, top: 30, bottom: 30),
            child: Card(
              elevation: 1.0,
              color: Colors.grey.shade100,
              child: Column(
                children: [
                  Form(
                      key: _formKey,
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          children: [
                            TextFormField(
                              onSaved: (value) => userLocal.email = value,
                              initialValue: userLocal.email,
                              decoration:
                                  const InputDecoration(hintText: 'E-mail...'),
                              validator: (value) {
                                if (value == null) {
                                  return 'Por favor, insira o seu e-mail!';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            TextFormField(
                              onSaved: (value) => userLocal.password = value,
                              initialValue: userLocal.password,
                              decoration:
                                  const InputDecoration(hintText: 'Senha...'),
                              validator: (value) {
                                if (value == null) {
                                  return 'Por favor, insira sua senha!';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OutlinedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                UserServices _userServices = UserServices();
                                _userServices.signIn(userLocal, onSucess: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) => HomeScreen()));
                                }, onFail: (e) {
                                  Text('$e');
                                });
                              }
                            },
                            child: const Text('Entrar')),
                        OutlinedButton(
                            onPressed: () {}, child: const Text('Registrar-se'))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
