import 'package:flutter/material.dart';
import 'package:proyecto/screens/residences_offers_screen.dart';
import 'package:proyecto/models/student.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _genderController = TextEditingController();
  TextEditingController _carrerController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _enrollmentController = TextEditingController();
  bool _userLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
      ),
      body: _buildRegisterForm(),
    );
  }

  Widget _buildRegisterForm() {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget> [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Nombre',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _enrollmentController,
              decoration: InputDecoration(
                labelText: 'Matricula',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _ageController,
              decoration: InputDecoration(
                labelText: 'Edad',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _carrerController,
              decoration: InputDecoration(
                labelText: 'Carrera',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _addressController,
              decoration: InputDecoration(
                labelText: 'Direccion',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _genderController,
              decoration: InputDecoration(
                labelText: 'Genero',
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                _register(); // Llamada a la función _register() cuando se presiona el botón de inicio de sesión
              },
              child: Text('Registrar'),
            ),
          ],
        ),
      ],
    );
  }

  // Método para manejar el inicio de sesión
  void _register() {
    // Lógica de inicio de sesión (aquí se puede agregar lógica de autenticación)

    // Simulación de inicio de sesión exitoso

    Student estudiante=Student(address: _addressController.text,name: _usernameController.text, age: int.parse(_ageController.text),carrer: _carrerController.text,enrollment: int.parse(_enrollmentController.text),gender: _genderController.text,password: _passwordController.text);
      // Navegar a la pantalla de ofertas de residencias si el inicio de sesión es exitoso
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => ResidencesOffersScreen( estudiante: estudiante,)),
            (route) => false,
      );

  }
}
