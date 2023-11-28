import 'package:flutter/material.dart';

import '../../../../../main.dart';

// Vista de inicio (Splash)
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    // Se ejecuta después de que se ha creado el marco de widgets.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _init(); // Inicia la lógica de inicialización.
    });
  }

  // Lógica de inicialización
  Future<void> _init() async {
    // Obtener el repositorio de conectividad del inyector
    final injector = Injector.of(context);
    final connectivityRepository = injector.connectivityRepository;

    // Verificar si hay conexión a Internet
    final hasInternet = await connectivityRepository.hasInternet;
    print('✅ hasInternet $hasInternet');

    if (hasInternet) {
      // Si hay conexión a Internet
      final authenticationRepository = injector.authenticationRepository;
      final isSignedIn = await authenticationRepository.isSignedIn;

      if (isSignedIn) {
        // Si el usuario está autenticado, realizar acciones adicionales aquí
      } else {
        // Si el usuario no está autenticado, realizar acciones adicionales aquí
      }
    } else {
      // Si no hay conexión a Internet, realizar acciones adicionales aquí
    }
  }

  @override
  Widget build(BuildContext context) {
    // Devuelve un Scaffold con un indicador de carga centrado en la pantalla
    return const Scaffold(
      body: Center(
        child: SizedBox(
          width: 80,
          height: 80,
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
