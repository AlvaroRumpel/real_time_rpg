import 'package:bloc/bloc.dart';

import '../../../models/rpg_table_model.dart';
import '../repository/create_session_repository.dart';

part 'create_session_state.dart';

class CreateSessionBloc extends Cubit<CreateSessionState> {
  CreateSessionBloc() : super(CreateSessionInitial());

  final _repo = CreateSessionRepository();

  Future<void> createSession({
    required String tableName,
    required String lifePointsBase,
    required String actionPointsBase,
    required String energyPointsBase,
    required String maxAttributesPoints,
    required String maxSkillPoints,
    required String minInventory,
  }) async {
    try {
      if ([
        tableName,
        lifePointsBase,
        actionPointsBase,
        energyPointsBase,
        maxAttributesPoints,
        maxSkillPoints,
        minInventory
      ].any((field) => field.isEmpty)) {
        emit(CreateSessionFailure());
        return;
      }

      final lifePoints = int.tryParse(lifePointsBase);
      final actionPoints = int.tryParse(actionPointsBase);
      final energyPoints = int.tryParse(energyPointsBase);
      final maxAttributes = int.tryParse(maxAttributesPoints);
      final maxSkills = int.tryParse(maxSkillPoints);
      final minInventoryValue = int.tryParse(minInventory);

      if ([
        lifePoints,
        actionPoints,
        energyPoints,
        maxAttributes,
        maxSkills,
        minInventoryValue
      ].contains(null)) {
        emit(CreateSessionFailure());
        return;
      }

      emit(CreateSessionLoading());

      final table = await _repo.createSession(
        tableName: tableName,
        lifePointsBase: lifePoints!,
        actionPointsBase: actionPoints!,
        energyPointsBase: energyPoints!,
        maxAttributesPoints: maxAttributes!,
        maxSkillPoints: maxSkills!,
        minInventory: minInventoryValue!,
      );

      emit(CreateSessionSuccess(table: table));
    } catch (e) {
      emit(CreateSessionFailure());
    }
  }
}
