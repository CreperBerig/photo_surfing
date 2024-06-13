import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_surfing/repositores/reposytories.dart';

part 'auth_event.dart';
part 'auth_stable.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository = AuthRepository();

  AuthBloc() : super(AuthInitialState()) {
    // Обработчик события входа
    on<AuthSignInEvent>((event, emit) async {
      emit(AuthLoadingState());
      try {
        await _authRepository.signIn(event.email, event.password);
        emit(AuthAuthenticatedState(event.email));
      } catch (e) {
        emit(AuthErrorState(e.toString()));
      }
    });

    // Обработчик события регистрации
    on<AuthSignUpEvent>((event, emit) async {
      emit(AuthLoadingState());
      try {
        await _authRepository.signUp(event.email, event.password, event.login, event.description);
        emit(AuthAuthenticatedState(event.email));
      } catch (e) {
        emit(AuthErrorState(e.toString()));
      }
    });

    // Обработчик события выхода
    on<AuthSignOutEvent>((event, emit) async {
      emit(AuthLoadingState());
      try {
        await _authRepository.signOut();
        emit(AuthUnauthenticatedState());
      } catch (e) {
        emit(AuthErrorState(e.toString()));
      }
    });

    //обработчик события добавления аватара
    on<AuthAvatarEvent>((event, emit) {
      emit(AuthAvatarState(event.avatarPath));
    });

    on<AuthHeaderEvent>((event, emit) {
      emit(AuthHeaderState(event.headerPath));
    });
  }
}