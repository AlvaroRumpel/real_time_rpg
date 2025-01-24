part of 'create_session_bloc.dart';

sealed class CreateSessionState {}

class CreateSessionInitial extends CreateSessionState {}

class CreateSessionLoading extends CreateSessionState {}

class CreateSessionSuccess extends CreateSessionState {}

class CreateSessionFailure extends CreateSessionState {}
