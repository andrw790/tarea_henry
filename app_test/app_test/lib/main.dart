import 'package:app_test/features/task/bloc/task_bloc.dart';
import 'package:app_test/features/user/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'views/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider( create: (_) => UserBloc()..add(LoadUser())),
        BlocProvider( create: (_) => TaskBloc()..add(LoadTask()))
      ],
      child: MaterialApp(
        title: "AppBlock",
        home: HomeView()
      ),
    );
  }
}


