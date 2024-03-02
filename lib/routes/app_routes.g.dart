// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
      $splashRoute,
      $adhayaListingRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $splashRoute => GoRouteData.$route(
      path: '/splash',
      factory: $SplashRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'onboarding',
          factory: $OnBoardingRouteExtension._fromState,
        ),
      ],
    );

extension $SplashRouteExtension on SplashRoute {
  static SplashRoute _fromState(GoRouterState state) => const SplashRoute();

  String get location => GoRouteData.$location(
        '/splash',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $OnBoardingRouteExtension on OnBoardingRoute {
  static OnBoardingRoute _fromState(GoRouterState state) =>
      const OnBoardingRoute();

  String get location => GoRouteData.$location(
        '/splash/onboarding',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $adhayaListingRoute => GoRouteData.$route(
      path: '/adhayaListing',
      factory: $AdhayaListingRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'slokListing',
          factory: $SlokListingRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'slokDetail',
              factory: $SlokListDetailRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $AdhayaListingRouteExtension on AdhayaListingRoute {
  static AdhayaListingRoute _fromState(GoRouterState state) =>
      const AdhayaListingRoute();

  String get location => GoRouteData.$location(
        '/adhayaListing',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SlokListingRouteExtension on SlokListingRoute {
  static SlokListingRoute _fromState(GoRouterState state) => SlokListingRoute(
        $extra: state.extra as String?,
      );

  String get location => GoRouteData.$location(
        '/adhayaListing/slokListing',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $SlokListDetailRouteExtension on SlokListDetailRoute {
  static SlokListDetailRoute _fromState(GoRouterState state) =>
      SlokListDetailRoute(
        verseNum: state.uri.queryParameters['verse-num']!,
        id: state.uri.queryParameters['id']!,
      );

  String get location => GoRouteData.$location(
        '/adhayaListing/slokListing/slokDetail',
        queryParams: {
          'verse-num': verseNum,
          'id': id,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
