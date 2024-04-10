import 'dart:convert';

import 'package:paquetes/classes/currencies.dart';
import 'package:paquetes/classes/flag.dart';
import 'package:paquetes/classes/languages.dart';
import 'package:paquetes/classes/name.dart';

List<Country> countryFromJson(String str) =>
    List<Country>.from(json.decode(str).map((x) => Country.fromJson(x)));

String countryToJson(List<Country> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Country {
  Name name;
  int population;
  List<String> borders;
  Languages languages;
  List<double> latlng;
  Currencies currencies;
  Flags flags;

  Country({
    required this.name,
    required this.population,
    required this.borders,
    required this.languages,
    required this.latlng,
    required this.currencies,
    required this.flags,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        name: Name.fromJson(json["name"]),
        population: json["population"],
        borders: List<String>.from(json["borders"].map((x) => x)),
        languages: Languages.fromJson(json["languages"]),
        latlng: List<double>.from(json["latlng"].map((x) => x)),
        currencies: Currencies.fromJson(json["currencies"]),
        flags: Flags.fromJson(json["flags"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name.toJson(),
        "population": population,
        "borders": List<dynamic>.from(borders.map((x) => x)),
        "languages": languages.toJson(),
        "latlng": List<double>.from(latlng.map((x) => x)),
        "currencies": currencies.toJson(),
        "flags": flags.toJson(),
      };
}
