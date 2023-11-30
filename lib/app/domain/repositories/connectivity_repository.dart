// Interfaz que define el contrato para el repositorio de conectividad
abstract class ConnectivityRepository {
  // Propiedad para verificar si hay conexión a Internet
  Future<bool> get hasInternet;
}
