part of 'auth_bloc.dart';

// Базовое событие
abstract class AuthEvent {
  const AuthEvent();
}

// Событие входа
class AuthSignInEvent extends AuthEvent {
  final String email;
  final String password;

  AuthSignInEvent(this.email, this.password);
}

// Событие регистрации
class AuthSignUpEvent extends AuthEvent {
  final String email;
  final String password;
  final String login;
  final String description;

  AuthSignUpEvent(this.email, this.password, this.login, this.description);
}

// Событие выхода
class AuthSignOutEvent extends AuthEvent {}

class AuthAvatarEvent extends AuthEvent {
  final String avatarPath;

  AuthAvatarEvent(this.avatarPath);
}

class AuthHeaderEvent extends AuthEvent {
  final String headerPath;

  AuthHeaderEvent(this.headerPath);
}