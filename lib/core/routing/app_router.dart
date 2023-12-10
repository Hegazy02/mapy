import 'package:flutter/material.dart';
import 'package:mapy/core/routing/routes.dart';
import 'package:mapy/features/auth/presentation/views/login_view.dart';
import 'package:mapy/features/auth/presentation/views/opt_view.dart';
import 'package:mapy/features/home/presentation/views/home_view.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginView:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.homeView:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.otpView:
        return MaterialPageRoute(
            builder: (_) => OtpView(
                  phoneNumber: settings.arguments as String,
                ));

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text("No route defined for ${settings.name}"),
                  ),
                ));
    }
  }
}
