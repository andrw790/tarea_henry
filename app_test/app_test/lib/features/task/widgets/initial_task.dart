
import 'package:flutter/material.dart';

class InitialTask extends StatelessWidget {
  const InitialTask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30,),
        Text("No hay tareas disponibles", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, ),),
        SizedBox(height: 20,),
        Icon(Icons.notifications, size: 50,)
      ],
    );
  }
}