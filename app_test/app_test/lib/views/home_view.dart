import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/user/bloc/user_bloc.dart';
import '../features/task/bloc/task_bloc.dart';

import '../features/user/user_container.dart';
import '../features/task/task_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          UserContainer(),
          Expanded(
            child: TaskContainer()
          ),
          Text("Test Estados"),
          Center(
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: (){
                    context.read<UserBloc>().add(InitialUserEv());
                    context.read<TaskBloc>().add(InitialTaskEv());
                  },
                  child: Text("Inicial")
                ),

                ElevatedButton(
                  onPressed: (){
                    context.read<UserBloc>().add(LoadinUserEv());
                    context.read<TaskBloc>().add(LoadinTaskEv());
                  },
                  child: Text("Cargando")
                ),
                ElevatedButton(
                  onPressed: (){
                    context.read<UserBloc>().add(FailedUserEv());
                    context.read<TaskBloc>().add(FailedTaskEv());
                  },
                  child: Text("Fallo")
                ),

                ElevatedButton(
                  onPressed: (){
                    context.read<UserBloc>().add(SuccessUserEv());
                    context.read<TaskBloc>().add(SuccessTaskEv());
                  },
                  child: Text("Success")
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}