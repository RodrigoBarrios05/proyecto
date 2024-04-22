import 'package:flutter/material.dart';
import 'package:proyecto/models/residence.dart';

class ResidenceOfferCard extends StatelessWidget {
  final Residence residencia;

  const ResidenceOfferCard({Key? key, required this.residencia}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              residencia.title ?? '',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Dirección: ${residencia.address ?? ''}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Fecha de publicación: ${residencia.publishedDate != null ? residencia.publishedDate!.toString().substring(0, 10) : ''}',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

