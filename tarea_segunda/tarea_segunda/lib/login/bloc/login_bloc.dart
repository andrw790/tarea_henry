import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginSubmitted>((event, emit) async {
      emit(LoginLoading());

      // Simulación de login
      await Future.delayed(Duration(seconds: 2));

      if (event.email == 'andrw@barrera.com' && event.password == '12345') {
        emit(LoginSuccess());
      } else {
        emit(LoginError());
      }
    });
  }
}