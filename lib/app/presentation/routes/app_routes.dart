// Importaciones necesarias
import 'package:flutter/material.dart';

import '../modules/home/views/home_view.dart';
import '../modules/sing_in/views/sign_in_view.dart';
import '../modules/splash/views/splash_view.dart';
import 'routes.dart';

// Definición de rutas de la aplicación
Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    // Puedes agregar más rutas aquí según sea necesario
    // Ruta para la vista de inicio (Splash)
    Routes.splash: (context) => const SplashView(),
    Routes.signIn: (context) => const SignInView(),
    Routes.home: (context) => const HomeView(),
  };
}
