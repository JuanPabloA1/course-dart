import 'dart:convert';

Cop copFromJson(String str) => Cop.fromJson(json.decode(str));

String copToJson(Cop data) => json.encode(data.toJson());

class Cop {
  String name;

  Cop({
    required this.name,
  });

  factory Cop.fromJson(Map<String, dynamic> json) => Cop(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}
