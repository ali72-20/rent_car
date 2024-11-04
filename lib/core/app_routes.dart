import 'package:go_router/go_router.dart';
import 'package:rent_car/presentation/pages/home_screen.dart';
import 'package:rent_car/presentation/pages/on_boarding.dart';

abstract class AppRouter {
  static const onBoardingPath = '/';
  static const homePath = "/Home";

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: onBoardingPath,
        builder: (context, state) => OnBoarding(),
      ),
      GoRoute(
        path: homePath,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
