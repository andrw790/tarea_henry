import 'package:flutter/material.dart';

class FailedTask extends StatelessWidget {
  const FailedTask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Algo a salido mal", style: TextStyle(fontSize: 25),),
        Text(""),
        Icon(Icons.error, size: 55,)
      ],
    );
  }
}