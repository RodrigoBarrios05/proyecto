import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:proyecto/models/user.dart';
import 'package:proyecto/screens/residences_offers_screen.dart';
import 'package:proyecto/screens/student_information_screen.dart';
import 'package:proyecto/models/student.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _userLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
      ),
      body: _buildLoginForm(),
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
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: 'email',
            ),
          ),
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
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

  void _register() {
    String username = _usernameController.text.trim();
    String email = _emailController.text.trim();
    String password = _passwordController.text;

    if (username.isEmpty || email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Por favor, completa todos los campos'),
          duration: Duration(seconds: 2),
        ),
      );
      return; // Sale de la función si algún campo está vacío
    }

    // Validar el formato del correo electrónico
    if (!_isValidEmail(email)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Correo electrónico no válido'),
          duration: Duration(seconds: 2),
        ),
      );
      return; // Sale de la función si el correo electrónico no es válido
    }

    // Si todos los campos están completos y el correo electrónico es válido, crear el usuario y navegar a la siguiente pantalla
    User user = User(username: username, email: email, password: password);
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => StudentInformationScreen(user: user)),
    );
  }

// Función para validar el formato del correo electrónico
  bool _isValidEmail(String email) {
    // Utiliza una expresión regular para verificar si el formato del correo electrónico es válido
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegExp.hasMatch(email);
  }
}
