import 'package:flutter/material.dart';
import 'package:proyecto/models/student.dart';

class ProfileScreen extends StatelessWidget{
  final Student estudiante;

  const ProfileScreen({Key? key, required this.estudiante}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenid@ ${estudiante.name}'),
      ),
      body: _buildInformation()
    );
  }

Widget _buildInformation(){
  return ListView(
    padding: const EdgeInsets.all(16.0),
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget> [
          Text('Matricula: ${estudiante.enrollment}')
          ,SizedBox(height: 16.0),
          Text('Carrera: ${estudiante.carrer}')
          ,SizedBox(height: 16.0),
          Text('Genero: ${estudiante.gender}')
          ,SizedBox(height: 16.0),
          Text('Edad: ${estudiante.age}')
          ,SizedBox(height: 16.0),
          Text('Direccion: ${estudiante.address}')
        ],
      ),
    ],
  );

}
}