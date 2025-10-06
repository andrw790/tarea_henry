import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tarea_segunda/login/vista/pages/login_pages.dart';
import 'package:tarea_segunda/user/cubit/home_cubit.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit()..fetchData(),
      child: Scaffold(
        appBar: AppBar(

  leading: IconButton(
    icon: const Icon(Icons.arrow_back, color: Colors.black),
    onPressed:() {
      Navigator.pop(context); // 🔙 vuelve a la página anterior
    },
  ),
),

      
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                  const Text(
        'Carro de usuario',
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
                const SizedBox(height: 40),
                SizedBox(
                  
                width: 350,
                height: 220,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15), // pon 0 si no quieres bordes redondeados
                  child: Image.asset(
                    'assets/images/ferrari.jpg',
                    fit: BoxFit.cover, // ajusta la imagen al contenedor
                  ),
                ),
              ),

              SizedBox(height: 20),

              Text(
                'BIENVENIDO, Este es tu Ferrari personalizado',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              // BlocBuilder
              BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  if (state is HomeLoading) {
                    return Text(
                      'Cargando...',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  } else if (state is HomeError) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Error al cargar',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(height: 20),
                        
                      ],
                    );
                  } else if (state is HomeSuccess) {
                    return Text(
                      'Hola, ${state.user.name}',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    );
                  } else {
                    return SizedBox.shrink();
                  }

                },
              ),

              Text(
                'Disfruta de la velocidad y el estilo',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}