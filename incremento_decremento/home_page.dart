// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _contador = 10; // variable privada
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Incremento y Decremento'),
          backgroundColor: Colors.teal),

        body: Center(
          child: Text("$_contador",
            style: TextStyle(fontSize: 50),
            textScaleFactor: 1)
        ),

        floatingActionButton: Column(
            children: <Widget>[
              SizedBox(
                height: 400,
                width: 10,
              ),

              FloatingActionButton(
                onPressed: () {
                  setState(() {
                     _contador = _contador +2;
                  });
                },
                child: Icon(Icons.add),
                backgroundColor: Colors.deepOrangeAccent[200],
              ),

              FloatingActionButton(
                onPressed: () {
                  setState(() {
                     _contador = _contador - 3;
                  });
                },
                child: Icon(Icons.remove),
                backgroundColor: Colors.teal[300],
              ),
              ],
          ),
        );
  }
}