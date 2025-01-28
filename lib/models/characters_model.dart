import 'dart:convert';

class CharacterModel {
  static String get tableName => 'characters';

  final String id;
  final String playerName;
  final String characterName;
  final String? title;
  final String? avatarUrl;
  final String? sessionId;
  final DateTime createdAt;
  final DateTime updatedAt;

  CharacterModel({
    required this.id,
    required this.playerName,
    required this.characterName,
    this.title,
    this.avatarUrl,
    this.sessionId,
    required this.createdAt,
    required this.updatedAt,
  });

  CharacterModel.newCharacter({
    required this.playerName,
    required this.characterName,
    this.title,
    this.avatarUrl,
    this.sessionId,
  })  : id = '',
        createdAt = DateTime.now(),
        updatedAt = DateTime.now();

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'player_name': playerName,
      'character_name': characterName,
      'title': title,
      'avatar_url': avatarUrl,
      'session_id': sessionId,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }

  factory CharacterModel.fromMap(Map<String, dynamic> map) {
    return CharacterModel(
      id: map['id'] as String,
      playerName: map['player_name'] as String,
      characterName: map['character_name'] as String,
      title: map['title'] as String?,
      avatarUrl: map['avatar_url'] as String?,
      sessionId: map['session_id'] as String?,
      createdAt: DateTime.parse(map['created_at']),
      updatedAt: DateTime.parse(map['updated_at']),
    );
  }

  String toJson() => json.encode(toMap());

  factory CharacterModel.fromJson(String source) =>
      CharacterModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
