import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_stable.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitialState()) {
    on<AuthSignInEvent>((event, emit) {
      
    });

    on<AuthSignUpEvent>((event, emit) {
      
    });

    on<AuthSignOutEvent>((event, emit) {
      
    });
  }
}