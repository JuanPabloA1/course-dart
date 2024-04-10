import 'dart:convert';

Name nameFromJson(String str) => Name.fromJson(json.decode(str));
String nameToJson(Name name) => json.encode(name.toJson());

class Name {
  String common;

  Name({
    required this.common,
  });

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        common: json["common"],
      );

  Map<String, dynamic> toJson() => {
        "common": common,
      };
}
