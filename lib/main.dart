import 'package:flutter/material.dart';
import 'package:router_sample/router/router.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Router Demo',
      routerConfig: router,
    );
  }
}
