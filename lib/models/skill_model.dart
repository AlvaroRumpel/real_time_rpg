import 'dart:convert';

class SkillModel {
  static String get tableName => 'skills';

  final String id;
  final String characterId;
  final String skillName;
  final int skillLevel;

  SkillModel({
    required this.id,
    required this.characterId,
    required this.skillName,
    this.skillLevel = 0,
  });

  SkillModel.newSkill({
    required this.characterId,
    required this.skillName,
  })  : id = '',
        skillLevel = 0;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'character_id': characterId,
      'skill_name': skillName,
      'skill_level': skillLevel,
    };
  }

  factory SkillModel.fromMap(Map<String, dynamic> map) {
    return SkillModel(
      id: map['id'] as String,
      characterId: map['character_id'] as String,
      skillName: map['skill_name'] as String,
      skillLevel: map['skill_level'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory SkillModel.fromJson(String source) =>
      SkillModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
