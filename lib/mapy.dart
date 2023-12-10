import 'package:flutter/material.dart';
import 'package:mapy/core/routing/app_router.dart';
import 'package:mapy/core/routing/routes.dart';

class Mapy extends StatelessWidget {
  const Mapy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      initialRoute: Routes.loginView,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
