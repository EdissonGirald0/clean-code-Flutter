// Importación necesaria
import '../../domain/repositories/connetivity_repository.dart';

// Implementación concreta del repositorio de conectividad
class ConnectivityRepositoryImpl implements ConnectivityRepository {
  // Propiedad para verificar si hay conexión a Internet
  @override
  Future<bool> get hasInternet {
    // Devuelve true de manera sincrónica (puedes personalizar la lógica según tus necesidades)
    return Future.value(true);
  }
}
