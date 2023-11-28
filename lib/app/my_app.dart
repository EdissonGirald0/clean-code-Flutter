// Importaciones necesarias
import 'package:flutter/material.dart';

import 'presentation/routes/app_routes.dart';
import 'presentation/routes/routes.dart';

// Clase principal que define la aplicación Flutter
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Configuración de la aplicación MaterialApp
    return MaterialApp(
      // Ruta inicial de la aplicación
      initialRoute: Routes.splash,

      // Definición de rutas de la aplicación
      routes: appRoutes,
    );
  }
}
