import 'package:flutter/material.dart';

class SuccessUser extends StatelessWidget {
  const SuccessUser({
    super.key,
    required this.jsonUser,
  });

  final Map<String, dynamic> jsonUser;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Hola, ${jsonUser['nombre']}", style: TextStyle(color: Colors.white, fontSize: 18)),
        Text("Contacto: ${jsonUser['email']}", style: TextStyle(color: Colors.white, fontSize: 18)),
        Text("Saldo: \$${jsonUser['saldo']}", style: TextStyle(color: Colors.white, fontSize: 18))
      ],
    );
  }
}