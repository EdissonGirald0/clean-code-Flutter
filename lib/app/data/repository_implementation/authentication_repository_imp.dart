// Importaciones necesarias
import '../../domain/models/user.dart';
import '../../domain/repositories/authentication_repository.dart';

// Implementación concreta del repositorio de autenticación
class AuthenticationRepositoryImp implements AuthenticationRepository {
  // Método para obtener datos del usuario
  @override
  Future<User> getUserData() {
    // Devuelve un usuario vacío de manera sincrónica
    return Future.value(User());
  }

  // Propiedad para verificar si el usuario está autenticado
  @override
  Future<bool> get isSignedIn {
    // Devuelve true de manera sincrónica (puedes personalizar la lógica según tus necesidades)
    return Future.value(true);
  }
}
