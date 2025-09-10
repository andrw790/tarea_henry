import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<LoadUser>((event, emit) async {
      emit(UserLoading());

      await Future.delayed(Duration(seconds: 2));

      try {

        final Map<String, dynamic> user = {
          "email": "user@gmail.com",
          "nombre": "mariobros",
          "saldo": 125000,
        };

        emit(UserSuccess(user));

      } catch (e) {

        emit(UserFailed("No se pudo cargar el usuario"));

      }
    });

    // Pruebas de Estado

    on<InitialUserEv>((event, emit) async => emit(UserInitial()));
    on<LoadinUserEv>((event, emit) async => emit(UserLoading()));
    on<FailedUserEv>((event, emit) async => emit(UserFailed("Error")));
    on<SuccessUserEv>((event, emit) async => emit(UserSuccess(
      {
        "email": "user@gmail.com",
        "nombre": "mariobros",
        "saldo": 125000,
      }
    )));
  }
}
