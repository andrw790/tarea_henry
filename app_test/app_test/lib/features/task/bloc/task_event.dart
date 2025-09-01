part of 'task_bloc.dart';

sealed class TaskEvent extends Equatable {
  const TaskEvent();

  @override
  List<Object> get props => [];
}

class LoadTask extends TaskEvent {}


// Pruebas de Estado
class InitialTaskEv extends TaskEvent {}
class LoadinTaskEv extends TaskEvent {}
class FailedTaskEv extends TaskEvent {}
class SuccessTaskEv extends TaskEvent {}