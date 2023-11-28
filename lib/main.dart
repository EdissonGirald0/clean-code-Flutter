// Importaciones necesarias
import 'package:flutter/material.dart';

// Importaciones de las implementaciones de repositorios
import 'app/data/repository_implementation/authentication_repository_imp.dart';
import 'app/data/repository_implementation/connectivity_repository_imp.dart';
// Importaciones de las definiciones de repositorios
import 'app/domain/repositories/authentication_repository.dart';
import 'app/domain/repositories/connetivity_repository.dart';
// Importación de la clase principal de la aplicación
import 'app/my_app.dart';

// Función principal de la aplicación Flutter
void main(List<String> args) {
  // Inicia la aplicación con un widget raíz
  runApp(
    Injector(
      // Configuración de los repositorios a través del inyector
      connectivityRepository: ConnectivityRepositoryImpl(),
      authenticationRepository: AuthenticationRepositoryImp(),

      // Widget principal de la aplicación
      child: const MyApp(),
    ),
  );
}

// Clase que actúa como un InheritedWidget para proporcionar acceso a los repositorios a lo largo del árbol de widgets
class Injector extends InheritedWidget {
  const Injector({
    super.key,
    required super.child,
    required this.connectivityRepository,
    required this.authenticationRepository,
  });

  // Repositorios proporcionados por el inyector
  final ConnectivityRepository connectivityRepository;
  final AuthenticationRepository authenticationRepository;

  @override
  bool updateShouldNotify(_) => false;

  // Método estático para obtener una instancia del inyector desde el contexto
  static Injector of(BuildContext context) {
    final injector = context.dependOnInheritedWidgetOfExactType<Injector>();
    assert(
        injector != null, 'El inyector no se encontró en el árbol de widgets');
    return injector!;
  }
}
