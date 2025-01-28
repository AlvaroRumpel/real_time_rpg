import 'dart:convert';

class InventoryModel {
  static String get tableName => 'inventory';

  final String id;
  final String characterId;
  final List<List<dynamic>> slots;
  final DateTime createdAt;
  final DateTime updatedAt;

  InventoryModel({
    required this.id,
    required this.characterId,
    required this.slots,
    required this.createdAt,
    required this.updatedAt,
  });

  InventoryModel.newInventory({
    required this.characterId,
  })  : id = '',
        slots = List.generate(3,
            (_) => List.filled(6, null)), // Default 3x6 grid with null values
        createdAt = DateTime.now(),
        updatedAt = DateTime.now();

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'character_id': characterId,
      'slots': slots,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }

  factory InventoryModel.fromMap(Map<String, dynamic> map) {
    return InventoryModel(
      id: map['id'] as String,
      characterId: map['character_id'] as String,
      slots: List<List<dynamic>>.from(
        (map['slots'] as List<dynamic>)
            .map((row) => List<dynamic>.from(row as List<dynamic>)),
      ),
      createdAt: DateTime.parse(map['created_at']),
      updatedAt: DateTime.parse(map['updated_at']),
    );
  }

  String toJson() => json.encode(toMap());

  factory InventoryModel.fromJson(String source) =>
      InventoryModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
