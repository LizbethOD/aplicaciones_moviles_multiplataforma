import 'package:flutter/material.dart';
import 'package:login/pages/home_page.dart';
import 'package:login/pages/login_page.dart';
import 'package:login/pages/registrar_page.dart';
import 'package:login/pages/read_page.dart';
import 'package:login/pages/write_page.dart';

void main() {
  runApp(MyLogin());
}

class MyLogin extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
        primaryColor: Colors.green[300],
      ),
      initialRoute: 'login',
      routes: {
        'home' : (BuildContext context) => HomePage(),
        'login' : (BuildContext context) => LoginPage(),
        'registro': (BuildContext context) => RegistroPage(),
        'read': (BuildContext context) => ReadPage(),
        'write': (BuildContext context) => WritePage(),
      },
    );
  }
}