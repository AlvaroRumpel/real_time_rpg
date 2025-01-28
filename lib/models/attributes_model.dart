import 'dart:convert';

class AttributesModel {
  static String get tableName => 'attributes';

  final String id;
  final String characterId;
  final int strength;
  final int intelligence;
  final int charisma;
  final int dexterity;
  final int perception;
  final int vitality;
  final int willpower;
  final int pointsToAdd;

  AttributesModel({
    required this.id,
    required this.characterId,
    this.strength = 0,
    this.intelligence = 0,
    this.charisma = 0,
    this.dexterity = 0,
    this.perception = 0,
    this.vitality = 0,
    this.willpower = 0,
    this.pointsToAdd = 0,
  });

  AttributesModel.newAttributes({
    required this.characterId,
  })  : id = '',
        strength = 0,
        intelligence = 0,
        charisma = 0,
        dexterity = 0,
        perception = 0,
        vitality = 0,
        willpower = 0,
        pointsToAdd = 0;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'character_id': characterId,
      'strength': strength,
      'intelligence': intelligence,
      'charisma': charisma,
      'dexterity': dexterity,
      'perception': perception,
      'vitality': vitality,
      'willpower': willpower,
      'points_to_add': pointsToAdd,
    };
  }

  factory AttributesModel.fromMap(Map<String, dynamic> map) {
    return AttributesModel(
      id: map['id'] as String,
      characterId: map['character_id'] as String,
      strength: map['strength'] ?? 0,
      intelligence: map['intelligence'] ?? 0,
      charisma: map['charisma'] ?? 0,
      dexterity: map['dexterity'] ?? 0,
      perception: map['perception'] ?? 0,
      vitality: map['vitality'] ?? 0,
      willpower: map['willpower'] ?? 0,
      pointsToAdd: map['points_to_add'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory AttributesModel.fromJson(String source) =>
      AttributesModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
