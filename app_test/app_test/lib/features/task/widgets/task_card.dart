import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String titulo;
  final String descripcion;

  const TaskCard({
    super.key,
    required this.titulo,
    required this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
        BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.15),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          )
        ]
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(titulo,style: TextStyle(fontSize: 20,  fontWeight: FontWeight.bold),),
          Text("- $descripcion",style: TextStyle(fontSize: 16),)
        ],
      ),
    );
  }
}
