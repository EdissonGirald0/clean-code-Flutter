// Importaciones necesarias
import 'package:flutter/material.dart';

import '../modules/splash/views/splash_view.dart';
import 'routes.dart';

// Definición de rutas de la aplicación
Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    // Ruta para la vista de inicio (Splash)
    Routes.splash: (context) => const SplashView(),
    // Puedes agregar más rutas aquí según sea necesario
  };
}
