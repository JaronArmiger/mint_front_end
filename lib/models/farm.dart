import 'dart:convert';

import 'package:mint_front_end/models/location.dart';
import 'package:mint_front_end/models/rating.dart';

class Farm {
  final String? id;
  final String name;
  final List<String> values;
  final String email;
  final String phoneNumber;
  final Location location;
  List<Rating>? ratings;

  Farm({
    required this.id,
    required this.name,
    required this.values,
    required this.email,
    required this.phoneNumber,
    required this.location,
    required this.ratings,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'values': values,
      'email': email,
      'phoneNumber': phoneNumber,
      'location': location.toMap(),
      'ratings': ratings,
    };
  }

  factory Farm.fromMap(Map<String, dynamic> map) {
    return Farm(
      id: map['_id'] ?? '',
      name: map['name'] ?? '',
      values: List<String>.from(map['ratings']),
      email: map['email'] ?? '',
      phoneNumber: map['phoneNumber'] ?? '',
      location: Location.fromMap(map['location']),
      ratings: map['ratings'] != null
          ? List<Rating>.from(
              map['ratings']?.map((rating) => Rating.fromMap(rating)))
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Farm.fromJson(String source) => Farm.fromMap(json.decode(source));
}
