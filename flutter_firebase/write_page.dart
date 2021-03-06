import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WritePage extends StatefulWidget {
  WritePage({Key key}) : super(key: key);
  @override

  _WritePageState createState() => _WritePageState();
}

class _WritePageState extends State<WritePage> {
  
  final _nombreController = TextEditingController();
  final _emailController = TextEditingController();

  var nombre;
  var email;

  @override
  void dispose() {
    _nombreController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WRITE'),
      ),
      body: _formAgenda(),
    );
  }

  Widget _formAgenda() {
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        SizedBox(
          height: 50,
        ),
        Text("Ingresa tu nombre:"),
        SizedBox(
          height: 10,
        ),
        TextField(
          controller: _nombreController,
        ),
        SizedBox(
          height: 20,
        ),
        Text("Ingreasa tu correo electrónico:"),
        SizedBox(
          height: 10,
        ),
        TextField(
          keyboardType: TextInputType.emailAddress,
          controller: _emailController,
        ),
        SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: () {
            _getData();
            _alerta();
          },
          child: Text("Enviar ahora"),
        ),
      ],
    );
  }

  
  void _alerta() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            content: Text(
                "**LISTO, los datos han sido almacenados**"));
      },
    );
  }


  void _getData() {
    setState(() {
      nombre = _nombreController.text;
      email = _emailController.text;
      _postData(nombre, email);
    });
  }

  void _postData(String nombre, String email) async {
    try {
      var url = Uri.parse(
          "https://proyecto-final-7024c-default-rtdb.firebaseio.com/Agenda.json");

      var data = {'nombre': nombre, 'email': email};
      final response = await http.post(url, body: json.encode(data));
    } catch (error) {
      print(error.toString());
    }
  }
}
