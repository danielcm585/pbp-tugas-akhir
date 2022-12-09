import 'dart:convert';
import 'package:scity_mobile/models/tender/company_model.dart';

List<Registrant> registrantFromJson(String str) => List<Registrant>.from(json.decode(str).map((x) => Registrant.fromJson(x)));

// String registrantToJson(List<Registrant> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Registrant {
  Registrant({
    required this.id,
    required this.company,
    required this.offerPrice,
    required this.registredAt,
    required this.isChosen,
  });

  int id;
  Company company;
  int offerPrice;
  DateTime registredAt;
  DateTime isChosen;

  factory Registrant.fromJson(Map<String, dynamic> json) => Registrant(
    id: json['id'],
    company: json['company'],
    offerPrice: json['offer_price'],
    registredAt: DateTime.parse(json['registred_at']),
    isChosen: json['is_chosen'],
  );

  // Map<String, dynamic> toJson() => {
  //   'id': id,
  //   'company': company,
  //   'offer_price': offerPrice,
  //   'registered_at': registredAt,
  //   'is_chosen': isChosen,
  // };
}