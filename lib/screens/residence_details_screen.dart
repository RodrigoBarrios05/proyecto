import 'package:flutter/material.dart';

class ResidenceDetailsScreen extends StatelessWidget {
  // final Residencia residencia;

  // const ResidenceDetailsScreen({Key? key, required this.residencia}) : super(key: key);

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
            // Text('Nombre: ${residencia.nombre}'),
            // Text('Descripción: ${residencia.descripcion}'),
            // Aquí colocarías otros detalles de la residencia
          ],
        ),
      ),
    );
  }
}
