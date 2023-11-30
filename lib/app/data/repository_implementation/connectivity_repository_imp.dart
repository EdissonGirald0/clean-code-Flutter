// Importación necesaria
import 'package:connectivity_plus/connectivity_plus.dart';

import '../../domain/repositories/connectivity_repository.dart';
import '../services/remote/internet_checker.dart';

// Implementación concreta del repositorio de conectividad
class ConnectivityRepositoryImpl implements ConnectivityRepository {
  // Propiedad para verificar si hay conexión a Internet
  final Connectivity _connectivity;
  final InternetChecker _internetChecker;
  ConnectivityRepositoryImpl(this._connectivity, this._internetChecker);
  @override
  Future<bool> get hasInternet async {
    // Devuelve true de manera sincrónica (puedes personalizar la lógica según tus necesidades)
    // Verificar el estado de la conectividad usando el paquete 'connectivity'
    final result = await _connectivity.checkConnectivity();

    if (result == ConnectivityResult.none) {
      return false;
    }
    return await _internetChecker.hasInternet();
  }
}
