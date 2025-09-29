import 'dart:convert';
import 'dart:developer'; // Importa para usar log()
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'user_event.dart';
import 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<UserFetchData>((event, emit) async {
      emit(UserLoading());

      // delay para simular tiempo de carga
      await Future.delayed(const Duration(seconds: 2));

      try {
        final response = await http.get(
          Uri.parse('https://jsonplaceholder.typicode.com/users/2'),
        );

        if (response.statusCode == 200) {
          final data = jsonDecode(response.body);
          final name = data['name'];

          emit(UserLoaded(name));
        } else {
          emit(UserError());
        }
      } catch (e) {
        emit(UserError());
      }
    });
  }
}
