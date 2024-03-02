import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_app/features/adhyaya/screen/adhaya_screen.dart';
import 'package:task_app/features/onboarding/screen/onboarding_screen.dart';
import 'package:task_app/features/onboarding/screen/splash_screen.dart';
import 'package:task_app/features/sloklisting/screen/slok_detail_screen.dart';
import 'package:task_app/features/sloklisting/screen/slok_listing_screen.dart';
import 'package:task_app/home/screen/home_screen.dart';
part 'app_routes.g.dart';

@TypedGoRoute<HomeRoute>(path: "/", routes: [])
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}

@TypedGoRoute<SplashRoute>(path: "/splash", routes: [
  TypedGoRoute<OnBoardingRoute>(path: 'onboarding', routes: []),
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

@TypedGoRoute<AdhayaListingRoute>(path: '/adhayaListing', routes: [
  TypedGoRoute<SlokListingRoute>(
    path: 'slokListing',
    routes: [
      TypedGoRoute<SlokListDetailRoute>(
        path: 'slokDetail',
        routes: [],
      )
    ],
  )
])
class AdhayaListingRoute extends GoRouteData {
  const AdhayaListingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AdhayaScreen();
}

class SlokListingRoute extends GoRouteData {
  final String? $extra;
  const SlokListingRoute({required this.$extra});

  @override
  Widget build(BuildContext context, GoRouterState state) => SlokListingScreen(
        chapterId: $extra ?? "",
      );
}

class SlokListDetailRoute extends GoRouteData {
  final String verseNum;
  final String id;

  const SlokListDetailRoute({required this.verseNum, required this.id});

  @override
  Widget build(BuildContext context, GoRouterState state) => SlokDetailScreen(
        id: id,
        verseNum: verseNum,
      );
}
