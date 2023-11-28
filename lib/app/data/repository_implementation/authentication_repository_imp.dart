import '../../domain/models/user.dart';
import '../../domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImp implements AuthenticationRepository {
  @override
  Future<User> getUserData() {
    // TODO: implement getUserData
    return Future.value(User());
  }

  @override
  // TODO: implement isSignedIn
  Future<bool> get isSignedIn {
    return Future.value(true);
  }
}
