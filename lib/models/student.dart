import 'package:proyecto/models/user.dart';

class Student extends User {
  final String? name;
  final String? lasName;
  final String? gender;
  final String? carrer;
  final int? age;
  final String? address;

  Student({
    this.name,
    this.lasName,
    this.gender,
    this.carrer,
    this.age,
    this.address,
    required super.username,
    required super.email,
    required super.password,
  });
}
