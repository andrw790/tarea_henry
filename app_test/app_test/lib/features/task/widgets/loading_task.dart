import 'package:flutter/material.dart';

class LoadingTask extends StatelessWidget {
  const LoadingTask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}