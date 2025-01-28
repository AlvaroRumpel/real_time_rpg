import 'dart:developer';
import 'dart:math' as math;

import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../models/rpg_table_model.dart';

class CreateSessionRepository {
  final _client = Supabase.instance.client;

  Future<RpgTableModel> createSession({
    required String tableName,
    required int lifePointsBase,
    required int actionPointsBase,
    required int energyPointsBase,
    required int maxAttributesPoints,
    required int maxSkillPoints,
    required int minInventory,
  }) async {
    try {
      final code = math.Random().nextInt(1000000).toString().padLeft(6, '0');
      final response = await _client
          .from(RpgTableModel.tableName)
          .insert(
            RpgTableModel.newTable(
              tableCode: code,
              baseActionPoints: actionPointsBase,
              baseEnergyPoints: energyPointsBase,
              baseHp: lifePointsBase,
              maxAttributePoints: maxAttributesPoints,
              maxProficiencyPoints: maxSkillPoints,
              minInventoryPoints: minInventory,
            ).toMap(),
          )
          .select()
          .limit(1)
          .single();

      return RpgTableModel.fromMap(response);
    } catch (e, s) {
      log(e.toString(), stackTrace: s, error: e);
      rethrow;
    }
  }

  Future<RpgTableModel> getSession(String code) async {
    try {
      final response = await _client
          .from(RpgTableModel.tableName)
          .select()
          .eq('table_code', code)
          .limit(1)
          .single();
      if (response.isEmpty) {
        throw Exception('Session not found');
      }
      return RpgTableModel.fromMap(response);
    } catch (e, s) {
      log(e.toString(), stackTrace: s, error: e);
      rethrow;
    }
  }
}
