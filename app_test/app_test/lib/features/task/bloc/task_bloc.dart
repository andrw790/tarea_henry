import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(TaskInitial()) {
    on<LoadTask>((event, emit) async{
      emit(TaskLoading());
      
      await Future.delayed(Duration(seconds: 5));

      try {
        final List<Map<String, dynamic>> task = [
          {
            "titulo": "Comprar",
            "descripcion": "ir al Ara"
          },
          {
            "titulo": "Transito",
            "descripcion": "Tramite"
          }
        ];

        emit(TaskSuccess(task));
      } catch (e) {

        emit(TaskFailed("No se pudo cargar las tareas"));

      }
    });
    
    // Pruebas de Estado
    on<InitialTaskEv>((event, emit) async => emit(TaskInitial()));
    on<LoadinTaskEv>((event, emit) async => emit(TaskLoading()));
    on<FailedTaskEv>((event, emit) async => emit(TaskFailed("Error")));
    on<SuccessTaskEv>((event, emit) async => emit(TaskSuccess(
      [
        {
          "titulo": "Comprar",
          "descripcion": "ir al Ara"
        },
        {
          "titulo": "Transito",
          "descripcion": "Tramite"
        }
      ]
    )));

  }
}
