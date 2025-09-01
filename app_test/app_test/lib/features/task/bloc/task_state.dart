part of 'task_bloc.dart';

sealed class TaskState extends Equatable {
  const TaskState();
  
  @override
  List<Object> get props => [];
}

class TaskInitial extends TaskState {}

class TaskLoading extends TaskState {}

class TaskFailed extends TaskState {
  final String message;

  const TaskFailed(this.message);

  @override
  List<Object> get props => [message];
}

class TaskSuccess extends TaskState {
  final List<Map<String, dynamic>> task;
  
  const TaskSuccess(this.task);

  @override
  List<Object> get props => [task];
}


