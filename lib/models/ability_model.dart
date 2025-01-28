import 'dart:convert';

class AbilityModel {
  static String get tableName => 'abilities';

  final String id;
  final String characterId;
  final String name;
  final String? description;
  final String? cost;

  AbilityModel({
    required this.id,
    required this.characterId,
    required this.name,
    this.description,
    this.cost,
  });

  AbilityModel.newAbility({
    required this.characterId,
    required this.name,
    this.description,
    this.cost,
  }) : id = '';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'character_id': characterId,
      'name': name,
      'description': description,
      'cost': cost,
    };
  }

  factory AbilityModel.fromMap(Map<String, dynamic> map) {
    return AbilityModel(
      id: map['id'] as String,
      characterId: map['character_id'] as String,
      name: map['name'] as String,
      description: map['description'] as String?,
      cost: map['cost'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  factory AbilityModel.fromJson(String source) =>
      AbilityModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
