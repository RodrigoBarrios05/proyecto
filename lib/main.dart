import 'package:flutter/material.dart';
import 'package:proyecto/screens/login_screen.dart';
import 'package:proyecto/screens/residence_details_screen.dart';
import 'package:proyecto/screens/residences_offers_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación',
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/residences_offers': (context) => ResidencesOffersScreen(username: '',),
        '/residence_details': (context) => ResidenceDetailsScreen(),
      },
    );
  }
}
