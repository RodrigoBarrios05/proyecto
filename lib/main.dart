import 'package:flutter/material.dart';
import 'package:proyecto/models/residence.dart';
import 'package:proyecto/models/student.dart';
import 'package:proyecto/screens/login_screen.dart';
import 'package:proyecto/screens/residence_details_screen.dart';
import 'package:proyecto/screens/residences_offers_screen.dart';
import 'package:proyecto/screens/register_screen.dart';
import 'package:proyecto/screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Aplicación',
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/residences_offers': (context) => ResidencesOffersScreen(estudiante: Student(),),
        '/residence_details': (context) => ResidenceDetailsScreen(residence: Residence(),),
        '/register_screen' : (context) => RegisterScreen(),
        '/profile_screen' : (context) => ProfileScreen(estudiante: Student()),
      },
    );
  }
}
