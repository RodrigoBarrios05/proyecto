import 'package:flutter/material.dart';
import 'package:proyecto/models/residence.dart';

class ResidenceDetailsScreen extends StatelessWidget {
  final Residence residence;

  const ResidenceDetailsScreen({Key? key, required this.residence}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles de la residencia'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nombre: ${residence.title}'),
            Text('Descripción: ${residence.description}'),
          ],
        ),
      ),
    );
  }
}
