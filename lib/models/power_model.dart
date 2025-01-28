import 'dart:convert';

class PowerModel {
  static String get tableName => 'powers';

  final String id;
  final String characterId;
  final String name;
  final String? description;
  final int rank;
  final int controlRank;
  final String? type;
  final String? range;
  final String? duration;
  final String? cost;
  final String? additionalCost;
  final String? limitations;
  final String? additionalEffects;

  PowerModel({
    required this.id,
    required this.characterId,
    required this.name,
    this.description,
    this.rank = 0,
    this.controlRank = 0,
    this.type,
    this.range,
    this.duration,
    this.cost,
    this.additionalCost,
    this.limitations,
    this.additionalEffects,
  });

  PowerModel.newPower({
    required this.characterId,
    required this.name,
    this.description,
    this.type,
    this.range,
    this.duration,
    this.cost,
    this.additionalCost,
    this.limitations,
    this.additionalEffects,
  })  : id = '',
        rank = 0,
        controlRank = 0;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'character_id': characterId,
      'name': name,
      'description': description,
      'rank': rank,
      'control_rank': controlRank,
      'type': type,
      'range': range,
      'duration': duration,
      'cost': cost,
      'additional_cost': additionalCost,
      'limitations': limitations,
      'additional_effects': additionalEffects,
    };
  }

  factory PowerModel.fromMap(Map<String, dynamic> map) {
    return PowerModel(
      id: map['id'] as String,
      characterId: map['character_id'] as String,
      name: map['name'] as String,
      description: map['description'] as String?,
      rank: map['rank'] ?? 0,
      controlRank: map['control_rank'] ?? 0,
      type: map['type'] as String?,
      range: map['range'] as String?,
      duration: map['duration'] as String?,
      cost: map['cost'] as String?,
      additionalCost: map['additional_cost'] as String?,
      limitations: map['limitations'] as String?,
      additionalEffects: map['additional_effects'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  factory PowerModel.fromJson(String source) =>
      PowerModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
