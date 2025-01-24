import 'dart:developer' as dev;
import 'dart:math';

import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../models/rpg_table_model.dart';

class CreateSessionRepository {
  final _client = Supabase.instance.client;

  Future<void> createSession({
    required String tableName,
    required int lifePointsBase,
    required int actionPointsBase,
    required int energyPointsBase,
    required int maxAttributesPoints,
    required int maxSkillPoints,
    required int minInventory,
  }) async {
    try {
      final code = Random().nextInt(1000000).toString().padLeft(6, '0');
      await _client.from('rpg_tables').insert(
            RpgTableModel.newTable(
              tableCode: code,
              baseActionPoints: actionPointsBase,
              baseEnergyPoints: energyPointsBase,
              baseHp: lifePointsBase,
              maxAttributePoints: maxAttributesPoints,
              maxProficiencyPoints: maxSkillPoints,
              minInventoryPoints: minInventory,
            ).toMap(),
          );
    } catch (e, s) {
      dev.log(e.toString(), stackTrace: s, error: e);
      rethrow;
    }
  }
}
