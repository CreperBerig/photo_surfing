part of 'auth_bloc.dart';

abstract class AuthState{
  const AuthState();
}

class AuthInitialState extends AuthState {}

class AuthLoadingState extends AuthState {}

class AuthSuccsesState extends AuthState {
  final String email;

  AuthSuccsesState(this.email);
}

class AuthErrorState extends AuthState{
  final String massege;

  AuthErrorState(this.massege);
}

class AuthUnAuthenticatedState extends AuthState {}