import 'package:flutter/material.dart';

class LoadingUser extends StatelessWidget {
  const LoadingUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator( color: Colors.white,),
    );
  }
}