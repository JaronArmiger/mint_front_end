import 'dart:convert';

class Location {
  final String streetAddress;
  final String city;
  final String state;
  final String zipcode;

  Location({
    required this.streetAddress,
    required this.city,
    required this.state,
    required this.zipcode,
  });

  Map<String, dynamic> toMap() {
    return {
      'streetAddress': streetAddress,
      'city': city,
      'state': state,
      'zipcode': zipcode,
    };
  }

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      streetAddress: map['streetAddress'] ?? '',
      city: map['city'] ?? '',
      state: map['state'] ?? '',
      zipcode: map['zipcode'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Location.fromJson(String source) =>
      Location.fromMap(json.decode(source));
}
