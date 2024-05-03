import 'package:flutter/material.dart';
import 'package:proyecto/screens/residences_offers_screen.dart';
import 'package:proyecto/screens/register_screen.dart';
import 'package:proyecto/models/student.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _userLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: _userLoggedIn ? ResidencesOffersScreen(estudiante: Student(),) : _buildLoginForm(),
    );
  }

  Widget _buildLoginForm() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _usernameController,
            decoration: InputDecoration(
              labelText: 'Username',
            ),
          ),
          SizedBox(height: 16.0),
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
          SizedBox(height: 32.0),
          ElevatedButton(
            onPressed: () {
              _login(); // Llamada a la función _login() cuando se presiona el botón de inicio de sesión
            },
            child: Text('Login'),
          ),
          SizedBox(height: 32.0),
          ElevatedButton(
            onPressed: () {
              _register(); // Llamada a la función _register() cuando se presiona el botón de inicio de sesión
            },
            child: Text('Register'),
          ),
        ],
      ),
    );
  }

  // Método para manejar el inicio de sesión
  void _login() {
    // Lógica de inicio de sesión (aquí se puede agregar lógica de autenticación)

    // Simulación de inicio de sesión exitoso
    bool loggedIn = true;

    // Declaro un objeto estudiante de prueba, se supone que se llenara con la base de datos
    Student estudiante=Student(address: 'Calle Oaxaca',name: _usernameController.text, age: 24,carrer: 'Ing Informatica',enrollment: 20443521,gender: 'hombre',password: _passwordController.text);
    if (loggedIn) {
      // Navegar a la pantalla de ofertas de residencias si el inicio de sesión es exitoso
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => ResidencesOffersScreen(estudiante: estudiante,)),
        (route) => false,
      );
    }
  }
  void _register(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterScreen()),
    );
  }
}
