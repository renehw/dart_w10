import 'dart:convert';

class PaymentTypeModel {
  final int? id;
  final String name;
  final String acronym;
  final String enable;

  PaymentTypeModel({
    this.id,
    required this.name,
    required this.acronym,
    required this.enable,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (id != null) {
      result.addAll({'id': id});
    }
    result.addAll({'name': name});
    result.addAll({'acronym': acronym});
    result.addAll({'enable': enable});

    return result;
  }

  factory PaymentTypeModel.fromMap(Map<String, dynamic> map) {
    return PaymentTypeModel(
      id: map['id']?.toInt(),
      name: map['name'] ?? '',
      acronym: map['acronym'] ?? '',
      enable: map['enable'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentTypeModel.fromJson(String source) => PaymentTypeModel.fromMap(json.decode(source));
}
