import 'package:go_router/go_router.dart';
import 'package:rent_car/presentation/pages/car_details_screen.dart';
import 'package:rent_car/presentation/pages/home_screen.dart';
import 'package:rent_car/presentation/pages/maps_details.dart';
import 'package:rent_car/presentation/pages/on_boarding.dart';

abstract class AppRouter {
  static const onBoardingPath = '/';
  static const homePath = "/Home";
  static const carDetailsPath = "/CarDetails";
  static const mapDetailPath = "/mapDetails";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: onBoardingPath,
        builder: (context, state) => OnBoarding(),
      ),
      GoRoute(
        path: homePath,
        builder: (context, state) =>  HomeScreen(),
      ),
      GoRoute(
        path: carDetailsPath,
        builder: (context, state) =>  const CarDetailsScreen(),
      ),

      GoRoute(
        path: mapDetailPath,
        builder: (context,state)=> const MapsDetails()
      )
    ],
  );
}
