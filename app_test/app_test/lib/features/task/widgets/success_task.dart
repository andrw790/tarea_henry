import 'package:flutter/material.dart';

import 'task_card.dart';

class SuccessTask extends StatelessWidget {
  const SuccessTask({
    super.key,
    required this.jsonTask,
  });

  final List<Map<String, dynamic>> jsonTask;

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: jsonTask.length,
      itemBuilder:(context, index) {
        return TaskCard(
          titulo: jsonTask[index]["titulo"], 
          descripcion: jsonTask[index]["descripcion"]
        );
      }
    );
  }
}