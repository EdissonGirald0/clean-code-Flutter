import 'package:flutter/material.dart';

import 'app/data/repository_implementation/authentication_repository_imp.dart';
import 'app/data/repository_implementation/connectivity_repository_imp.dart';
import 'app/domain/repositories/authentication_repository.dart';
import 'app/domain/repositories/connetivity_repository.dart';
import 'app/my_app.dart';

void main(List<String> args) {
  runApp(
    Injector(
      connectivityRepository: ConnectivityRepositoryImpl(),
      authenticationRepository: AuthenticationRepositoryImp(),
      child: const MyApp(),
    ),
  );
}

class Injector extends InheritedWidget {
  const Injector({
    super.key,
    required super.child,
    required this.connectivityRepository,
    required this.authenticationRepository,
  });
  final ConnectivityRepository connectivityRepository;
  final AuthenticationRepository authenticationRepository;
  @override
  // ignore: avoid_renaming_method_parameters
  bool updateShouldNotify(_) => false;
  static Injector of(BuildContext context) {
    final injector = context.dependOnInheritedWidgetOfExactType<Injector>();
    assert(injector != null, 'Injector no funsiono');
    return injector!;
  }
}
