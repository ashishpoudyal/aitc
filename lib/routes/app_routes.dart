import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_app/features/onboarding/screen/onboarding_screen.dart';
import 'package:task_app/features/onboarding/screen/splash_screen.dart';
import 'package:task_app/home/screen/home_screen.dart';
part 'app_routes.g.dart';

@TypedGoRoute<HomeRoute>(path: "/", routes: [])
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}

@TypedGoRoute<SplashRoute>(path: "/splash", routes: [
  TypedGoRoute<OnBoardingRoute>(path: 'onboardingRoute', routes: [])
])
class SplashRoute extends GoRouteData {
  const SplashRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SplashScreen();
}

class OnBoardingRoute extends GoRouteData {
  const OnBoardingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const OnBoardingScreen();
}
