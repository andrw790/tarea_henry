import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/task_bloc.dart';

import 'widgets/success_task.dart';
import 'widgets/loading_task.dart';
import 'widgets/failed_task.dart';
import 'widgets/initial_task.dart';

class TaskContainer extends StatelessWidget {
  const TaskContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Tareas",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: BlocBuilder<TaskBloc, TaskState>(
              builder: (context, state) {
                if (state is TaskInitial){
                  return InitialTask();
                } else if (state is TaskLoading){
                  return LoadingTask();
                } else if (state is TaskSuccess){
                  return SuccessTask(jsonTask: state.task);
                } else if (state is TaskFailed){
                  return FailedTask();
                }
                return SizedBox();
              }
            ),
          ),
        ],
      ),
    );
  }
}
