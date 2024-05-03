import 'package:flutter/material.dart';
import 'package:proyecto/models/residence.dart';
import 'package:proyecto/screens/residence_details_screen.dart';

class ResidenceOfferCard extends StatelessWidget {
  final Residence residencia;

  const ResidenceOfferCard({Key? key, required this.residencia}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResidenceDetailsScreen(residence: residencia),
          ),
        );
      },
      child: Card(
        elevation: 4, // Added elevation for a subtle shadow effect
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                residencia.title ?? '',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple, // Title color
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Dirección: ${residencia.address ?? ''}',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[800], // Address color
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Fecha de publicación: ${calculateDaysSincePublication(residencia.publishedDate)}',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600], // Date color
                ),
              ),
            ],
          ),
        ),
        color: Colors.grey[200], // Background color of the card
      ),
    );
  }
}

String calculateDaysSincePublication(DateTime? publishedDate) {
  if (publishedDate == null) return '';

  final now = DateTime.now();
  final difference = now.difference(publishedDate);
  final days = difference.inDays;

  if (days == 0) {
    return 'Hoy';
  } else if (days == 1) {
    return 'Hace 1 día';
  } else {
    return 'Hace $days días';
  }
}
