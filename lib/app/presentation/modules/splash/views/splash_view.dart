import 'package:flutter/material.dart';

import '../../../../../main.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _init();
    });
  }

  Future<void> _init() async {
    final connectivityRepository = Injector.of(context).connectivityRepository;
    final hasInternet = await connectivityRepository.hasInternet;
    print('✅ hasInternet $hasInternet');
    if (hasInternet) {
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
            child: SizedBox(
      width: 80,
      height: 80,
      child: CircularProgressIndicator(),
    )));
  }
}
