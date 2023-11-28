import '../../domain/repositories/connetivity_repository.dart';

class connectivityRepositoryImpl implements ConnectivityRepository {
  @override
  Future<bool> get hasInternet {
    return Future.value(true);
  }
}
