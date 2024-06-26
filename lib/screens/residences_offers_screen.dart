import 'package:flutter/material.dart';
import 'package:proyecto/db_residences.dart';
import 'package:proyecto/models/residence.dart';
import 'package:proyecto/widgets/residence_offer_card.dart';
import 'package:proyecto/models/student.dart';
import 'package:proyecto/screens/profile_screen.dart';

class ResidencesOffersScreen extends StatelessWidget {
  final List<Residence> residencias = residences;
  final Student estudiante;

  ResidencesOffersScreen({Key? key, required this.estudiante }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen(estudiante: estudiante)),
                );
              },
              icon: Icon(Icons.person), // Icono para acceder al perfil
            ),
          Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Buscar residencia...',
                  border: OutlineInputBorder(),
                ),
                onChanged: search,
              ),
          ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen(estudiante: estudiante)),
                );
              },
              icon: Icon(Icons.notifications), // Icono para acceder al perfil
            ),
        ],
      ),
      body: ListView.builder(
        itemCount: residencias.length,
        itemBuilder: (context, index) {
          return ResidenceOfferCard(residencia: residencias[index]);
        },
      ),
    );
  }

  void search(String value) {
    // Implementa la lógica de búsqueda aquí
  }
}
