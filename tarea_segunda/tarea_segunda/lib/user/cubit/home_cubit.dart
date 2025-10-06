import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'dart:convert';
import 'package:tarea_segunda/models/userModel.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeLoading());

  Future<void> fetchData() async {
    emit(HomeLoading());
    
    try {
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/users/1')
      );

      if (response.statusCode != 200) {
        emit(HomeError());
        throw Exception('Failed to load data');
      }
      final Map<String, dynamic> data = jsonDecode(response.body);
      final user = User.fromJson(data);


      emit(HomeSuccess(user: user));
    } catch (e) {
      print(e);
      emit(HomeError());
    }
  }
}
