// Importación necesaria
import '../models/user.dart';

// Interfaz que define el contrato para el repositorio de autenticación
abstract class AuthenticationRepository {
  // Propiedad para verificar si el usuario está autenticado
  Future<bool> get isSignedIn;

  // Método para obtener datos del usuario
  Future<User?> getUserData();
}
