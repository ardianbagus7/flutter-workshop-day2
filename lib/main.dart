import 'package:flutter/material.dart';
import 'package:seabank_app/core/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = Routes.generateRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Seabank',
      debugShowCheckedModeBanner: false,
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}
