import 'package:flutter/material.dart';

class InitialUser extends StatelessWidget {
  const InitialUser({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("!Welcome!", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
    );
  }
}