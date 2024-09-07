import 'package:doc_clinic/core/routings/routers.dart';
import 'package:doc_clinic/features/onboarding/ui/on_boarding_screen.dart';
import 'package:flutter/material.dart';
class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routers.onBoarding:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      // case Routers.login:
      //   return MaterialPageRoute(
      //     builder: (_) => const LoginScreen(),
      //   );
      // case Routers.home:
      //   return MaterialPageRoute(
      //     builder: (_) => const LoginScreen(),
      //   );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}