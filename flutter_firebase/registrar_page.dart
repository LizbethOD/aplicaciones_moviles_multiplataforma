import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegistroPage extends StatefulWidget {
  RegistroPage({Key key}) : super(key: key);

  @override
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  GlobalKey<FormState> keyForm = new GlobalKey();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  var email;
  var password;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("REGISTRO"),
      ),
      body: _formularioLogin(),
    );
  }

  Widget _formularioLogin() {
    return ListView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text('Ingrese su correo electrónico:'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              maxLength: 50,
              controller: _emailController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Correo electrónico:"),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text('Ingrese su contraseña:'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Contraseña"),
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: ElevatedButton(
                  child: Container(child: Text("Registrar ahora")),
                  onPressed: _loginButton)),
        ]);
  }

  void _loginButton() {
    setState(() {
      email = _emailController.text;
      password = _passwordController.text;
      print(email);
      print(password);
      authUser(email, password);
    });
  }

  void authUser(
    String email,
    String password,
  ) async {
    try {
      var url = Uri.parse(
          'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyBydsrDV4-FBjPJknCW-NR95xLiDyu0f48');
      Map<String, dynamic> map = new Map<String, dynamic>();
      map['email'] = email;
      map['password'] = password;
      var response = await http.post(url, body: map);
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      if (response.statusCode == 200) {
        //Navigator.popAndPushNamed(context, 'leer');
        Navigator.pushNamed(context, 'login');
      }
      if (response.statusCode == 400) {
        _mensaje();
      }
    } catch (error) {
      print(error.toString());
    }
  }

  void _mensaje() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            content: Text("**ERROR, datos incorrectos, verifiquelos nuevamente**"));
      },
    );
  }
}