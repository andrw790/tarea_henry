import 'package:flutter/material.dart';

class FailedUser extends StatelessWidget {
  const FailedUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Algo a salido mal", style: TextStyle(color: Colors.white, fontSize: 16),),
        Icon(Icons.error, color: Colors.white,)
      ],
    );
  }
}