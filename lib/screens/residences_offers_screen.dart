import 'package:flutter/material.dart';
import 'package:proyecto/db_residences.dart';
import 'package:proyecto/models/residence.dart';
import 'package:proyecto/widgets/residence_offer_card.dart';

class ResidencesOffersScreen extends StatelessWidget {
  final List<Residence> residencias = residences;
  final String username;

  ResidencesOffersScreen({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ofertas de residencia para $username'),
        actions: [
          IconButton(
            onPressed: () {
              // Acción para acceder al perfil del usuario
              // Ejemplo: Navigator.pushNamed(context, '/perfil');
            },
            icon: Icon(Icons.person), // Icono para acceder al perfil
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Buscar residencia...',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      // Lógica de búsqueda
                    },
                  ),
                ),
                SizedBox(width: 16),
                IconButton(
                  onPressed: () {
                    // Acción para abrir el filtro
                  },
                  icon: Icon(Icons.filter_list), // Icono para abrir el filtro
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: residencias.length,
        itemBuilder: (context, index) {
          return ResidenceOfferCard(residencia: residencias[index]);
        },
      ),
    );
  }
}
