import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_surfing/repositores/reposytories.dart';

part 'auth_event.dart';
part 'auth_stable.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository = AuthRepository();

  AuthBloc() : super(AuthInitialState()) {
    on<AuthSignInEvent>((event, emit) {
      emit(AuthLoadingState());
      try {
        _authRepository.signIn(event.email, event.password);
        emit(AuthAuthenticatedState());
      } catch(e) {
        emit(AuthErrorState(e.toString()));
      }
    });

    on<AuthSignUpEvent>((event, emit) {
      emit(AuthLoadingState());
      try {
        _authRepository.signUp(event.email, event.password);
        emit(AuthAuthenticatedState());
      } catch(e) {
        emit(AuthErrorState(e.toString()));
      }
    });

    on<AuthSignOutEvent>((event, emit) {
      emit(AuthLoadingState());
      try {
        _authRepository.signOut();
        emit(AuthUnAuthenticatedState());
      } catch(e) {
        emit(AuthErrorState(e.toString()));
      }
    });
  }
}