import 'dart:convert';

class RpgTableModel {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  final String tableCode;
  final List<String>? playerIds;
  final int baseHp;
  final int baseActionPoints;
  final int baseEnergyPoints;
  final int maxAttributePoints;
  final int maxProficiencyPoints;
  final int minInventoryPoints;

  RpgTableModel({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.tableCode,
    this.playerIds,
    required this.baseHp,
    required this.baseActionPoints,
    required this.baseEnergyPoints,
    required this.maxAttributePoints,
    required this.maxProficiencyPoints,
    required this.minInventoryPoints,
  });

  RpgTableModel.newTable({
    required this.tableCode,
    required this.baseHp,
    required this.baseActionPoints,
    required this.baseEnergyPoints,
    required this.maxAttributePoints,
    required this.maxProficiencyPoints,
    required this.minInventoryPoints,
  })  : id = '',
        playerIds = null,
        createdAt = DateTime.now(),
        updatedAt = DateTime.now(),
        deletedAt = null;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleted_at': deletedAt?.toIso8601String(),
      'table_code': tableCode,
      'player_ids': playerIds,
      'base_hp': baseHp,
      'base_action_points': baseActionPoints,
      'base_energy_points': baseEnergyPoints,
      'max_attribute_points': maxAttributePoints,
      'max_proficiency_points': maxProficiencyPoints,
      'min_inventory_points': minInventoryPoints,
    };
  }

  factory RpgTableModel.fromMap(Map<String, dynamic> map) {
    return RpgTableModel(
      id: map['id'] as String,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['created_at'] as int),
      updatedAt: DateTime.fromMillisecondsSinceEpoch(map['updated_at'] as int),
      deletedAt: map['deleted_at'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['deleted_at'] as int)
          : null,
      tableCode: map['table_code'] as String,
      playerIds: map['player_ids'] != null
          ? List<String>.from((map['player_ids'] as List<String>))
          : null,
      baseActionPoints: map['base_action_points'] ?? 0,
      baseEnergyPoints: map['base_energy_points'] ?? 0,
      baseHp: map['base_hp'] ?? 0,
      maxAttributePoints: map['max_attribute_points'] ?? 0,
      maxProficiencyPoints: map['max_proficiency_points'] ?? 0,
      minInventoryPoints: map['min_inventory_points'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory RpgTableModel.fromJson(String source) =>
      RpgTableModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
