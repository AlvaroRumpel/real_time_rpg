import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/rpg_table_model.dart';
import '../repository/create_session_repository.dart';

part 'enter_session_state.dart';

class EnterSessionBloc extends Cubit<EnterSessionState> {
  EnterSessionBloc() : super(EnterSessionInitial());

  final _repo = CreateSessionRepository();

  Future<void> enterSession(String code) async {
    try {
      if (code.isEmpty) {
        emit(EnterSessionFailure('Código inválido'));
        return;
      }
      emit(EnterSessionLoading());
      final result = await _repo.getSession(code);
      emit(EnterSessionSuccess(result));
    } catch (e) {
      emit(EnterSessionFailure(e.toString()));
    }
  }
}
