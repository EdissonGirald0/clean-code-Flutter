import '../../domain/repositories/connetivity_repository.dart';

class ConnectivityRepositoryImpl implements ConnectivityRepository {
  @override
  Future<bool> get hasInternet {
    return Future.value(true);
  }
}
