part of 'enter_session_bloc.dart';

sealed class EnterSessionState {}

final class EnterSessionInitial extends EnterSessionState {}

final class EnterSessionLoading extends EnterSessionState {}

final class EnterSessionSuccess extends EnterSessionState {
  final RpgTableModel table;
  EnterSessionSuccess(this.table);
}

final class EnterSessionFailure extends EnterSessionState {
  final String error;
  EnterSessionFailure(this.error);
}
