import 'package:flutter/material.dart';
import 'package:proyecto/models/user.dart';
import 'package:proyecto/screens/residences_offers_screen.dart';
import 'package:proyecto/models/student.dart';

class StudentInformationScreen extends StatefulWidget {
  final User user;

  const StudentInformationScreen({Key? key, required this.user}) : super(key: key);

  @override
  _StudentInformationScreenState createState() =>
      _StudentInformationScreenState();
}

class _StudentInformationScreenState extends State<StudentInformationScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _genderController = TextEditingController();
  TextEditingController _carrerController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  bool _userLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dinos mas sobre ti'),
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
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nombre',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _lastNameController,
              decoration: InputDecoration(
                labelText: 'Apellido',
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
              onPressed: _registerInformation,
              child: Text('Confirmar'),
            ),
            OutlinedButton(
              onPressed: () {
                // Llamar a la función para omitir
                redirectResidenceOffersScreen(Student(username: widget.user.username, email: widget.user.email, password: widget.user.password));
              },
              child: Text('Omitir'),
            )
          ],
        ),
      ],
    );
  }

  // Método para manejar el inicio de sesión
  void _registerInformation() {
    // Lógica de registro (aquí puedes agregar validaciones y lógica adicional)

    // Simulación de registro exitoso
    Student estudiante = Student(
      username: widget.user.username,
      email: widget.user.email,
      password: widget.user.password,
      address: _addressController.text,
      name: _nameController.text,
      lasName: _lastNameController.text,
      age: int.tryParse(_ageController.text) ?? 0, // Manejar posibles errores al convertir a entero
      carrer: _carrerController.text,
      gender: _genderController.text,
    );
    // Navegar a la pantalla de ofertas de residencias si el registro es exitoso
    redirectResidenceOffersScreen(estudiante);
  }

  // Método para redirigir a la pantalla de ofertas de residencias
  void redirectResidenceOffersScreen(Student student) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => ResidencesOffersScreen(estudiante: student),
      ),
      (route) => false,
    );
  }
}
